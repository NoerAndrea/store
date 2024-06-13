-- CreateTable
CREATE TABLE "lojas" (
    "cnpj" VARCHAR(20) NOT NULL,
    "nome" VARCHAR(200) NOT NULL,
    "segmento" VARCHAR(100) DEFAULT 'alimentação',
    "endereco" VARCHAR(200) NOT NULL,
    "telefone" VARCHAR(15),
    "quantidade_filiais" INTEGER NOT NULL,
    "data_abertura" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "lojas_pkey" PRIMARY KEY ("cnpj")
);

-- CreateTable
CREATE TABLE "fornecedores" (
    "id" SERIAL NOT NULL,
    "nome" VARCHAR(200) NOT NULL,
    "email" VARCHAR(200) NOT NULL,
    "avaliacao" INTEGER NOT NULL,
    "data_criacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "data_atualizacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "fornecedores_pkey" PRIMARY KEY ("id")
);
