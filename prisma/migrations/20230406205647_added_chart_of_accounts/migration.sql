-- CreateTable
CREATE TABLE "Budget" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "lastUpdatedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "isArchived" BOOLEAN NOT NULL,
    "isPrimary" BOOLEAN NOT NULL,
    "year" INTEGER NOT NULL,
    "chartOfAccountsId" INTEGER NOT NULL,
    "organizationId" INTEGER NOT NULL,
    CONSTRAINT "Budget_chartOfAccountsId_fkey" FOREIGN KEY ("chartOfAccountsId") REFERENCES "ChartOfAccounts" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Budget_organizationId_fkey" FOREIGN KEY ("organizationId") REFERENCES "Organization" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "ChartOfAccounts" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "budgetId" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "CategoryOfAccounts" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "chartOfAccountsId" INTEGER NOT NULL,
    CONSTRAINT "CategoryOfAccounts_chartOfAccountsId_fkey" FOREIGN KEY ("chartOfAccountsId") REFERENCES "ChartOfAccounts" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "AccountHeading" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "categoryOfAccountsId" INTEGER NOT NULL,
    "parentHeadingId" INTEGER,
    CONSTRAINT "AccountHeading_categoryOfAccountsId_fkey" FOREIGN KEY ("categoryOfAccountsId") REFERENCES "CategoryOfAccounts" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "AccountHeading_parentHeadingId_fkey" FOREIGN KEY ("parentHeadingId") REFERENCES "AccountHeading" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "AccountHeadingInputAccountLabel" (
    "inputAccountLabelId" INTEGER NOT NULL,
    "accountHeadingId" INTEGER NOT NULL,

    PRIMARY KEY ("inputAccountLabelId", "accountHeadingId"),
    CONSTRAINT "AccountHeadingInputAccountLabel_inputAccountLabelId_fkey" FOREIGN KEY ("inputAccountLabelId") REFERENCES "InputAccountLabel" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "AccountHeadingInputAccountLabel_accountHeadingId_fkey" FOREIGN KEY ("accountHeadingId") REFERENCES "AccountHeading" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "CategoryOfAccountsInputAccountLabel" (
    "inputAccountLabelId" INTEGER NOT NULL,
    "categoryOfAccountsId" INTEGER NOT NULL,

    PRIMARY KEY ("inputAccountLabelId", "categoryOfAccountsId"),
    CONSTRAINT "CategoryOfAccountsInputAccountLabel_inputAccountLabelId_fkey" FOREIGN KEY ("inputAccountLabelId") REFERENCES "InputAccountLabel" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "CategoryOfAccountsInputAccountLabel_categoryOfAccountsId_fkey" FOREIGN KEY ("categoryOfAccountsId") REFERENCES "CategoryOfAccounts" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "InputAccountLabel" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "AccountHeadingComputedAccountLabel" (
    "computedAccountLabelId" INTEGER NOT NULL,
    "accountHeadingId" INTEGER NOT NULL,

    PRIMARY KEY ("computedAccountLabelId", "accountHeadingId"),
    CONSTRAINT "AccountHeadingComputedAccountLabel_computedAccountLabelId_fkey" FOREIGN KEY ("computedAccountLabelId") REFERENCES "ComputedAccountLabel" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "AccountHeadingComputedAccountLabel_accountHeadingId_fkey" FOREIGN KEY ("accountHeadingId") REFERENCES "AccountHeading" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "CategoryOfAccountsComputedAccountLabel" (
    "computedAccountLabelId" INTEGER NOT NULL,
    "categoryOfAccountsId" INTEGER NOT NULL,

    PRIMARY KEY ("computedAccountLabelId", "categoryOfAccountsId"),
    CONSTRAINT "CategoryOfAccountsComputedAccountLabel_computedAccountLabelId_fkey" FOREIGN KEY ("computedAccountLabelId") REFERENCES "ComputedAccountLabel" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "CategoryOfAccountsComputedAccountLabel_categoryOfAccountsId_fkey" FOREIGN KEY ("categoryOfAccountsId") REFERENCES "CategoryOfAccounts" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "ComputedAccountLabel" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Budget_chartOfAccountsId_key" ON "Budget"("chartOfAccountsId");

-- CreateIndex
CREATE UNIQUE INDEX "Budget_organizationId_key" ON "Budget"("organizationId");

-- CreateIndex
CREATE UNIQUE INDEX "ChartOfAccounts_budgetId_key" ON "ChartOfAccounts"("budgetId");

-- CreateIndex
CREATE UNIQUE INDEX "AccountHeadingInputAccountLabel_inputAccountLabelId_key" ON "AccountHeadingInputAccountLabel"("inputAccountLabelId");

-- CreateIndex
CREATE UNIQUE INDEX "CategoryOfAccountsInputAccountLabel_inputAccountLabelId_key" ON "CategoryOfAccountsInputAccountLabel"("inputAccountLabelId");

-- CreateIndex
CREATE UNIQUE INDEX "AccountHeadingComputedAccountLabel_computedAccountLabelId_key" ON "AccountHeadingComputedAccountLabel"("computedAccountLabelId");

-- CreateIndex
CREATE UNIQUE INDEX "CategoryOfAccountsComputedAccountLabel_computedAccountLabelId_key" ON "CategoryOfAccountsComputedAccountLabel"("computedAccountLabelId");
