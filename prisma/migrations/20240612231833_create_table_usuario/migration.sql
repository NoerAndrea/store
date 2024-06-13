-- CreateTable
CREATE TABLE "usuarios" (
    "id" SERIAL NOT NULL,
    "nome" VARCHAR(200) NOT NULL,
    "idade" DATE NOT NULL,
    "email" VARCHAR(200) NOT NULL,
    "senha" VARCHAR(200) NOT NULL,
    "github" VARCHAR(200),

    CONSTRAINT "usuarios_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "usuarios_email_key" ON "usuarios"("email");
