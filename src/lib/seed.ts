import prisma from "./prisma";

async function main() {
  const dev = await prisma.user.upsert({
    where: {
      email: "dev@unbothered.io"
    },
    update: {},
    create: {
      email: "dev@unbothered.io",
      full_name: "dev dev dev",
    }
  });
  const devOrg = await prisma.organization.upsert({
    where: {
      slug: "dev"
    },
    update: {},
    create: {
      name: "DEV ORGANIZATION",
      slug: "dev",
    }
  });
  const devInDev = await prisma.userOrganizationMembership.upsert({
    where: {
      userId_organizationId: {
        userId: dev.id,
        organizationId: devOrg.id,
      }
    },
    update: {},
    create: {
      userId: dev.id,
      organizationId: devOrg.id,
      role: "ADMIN"
    }
  })

  console.log({
    dev,
    devOrg,
    devInDev,
  })
}

main().then(async() => {
  await prisma.$disconnect();
}).catch(async e => {
  console.error(e);
  await prisma.$disconnect();
  process.exit(1);
});

