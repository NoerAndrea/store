-- CreateTable
CREATE TABLE "produtos" (
    "id" SERIAL NOT NULL,
    "descricao" VARCHAR(200) NOT NULL,
    "valor" DECIMAL(8,2) NOT NULL,
    "quantidade_estoque" INTEGER NOT NULL,
    "tipo do produto" VARCHAR(200) NOT NULL,
    "data_criacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "disponivel" BOOLEAN DEFAULT true,

    CONSTRAINT "produtos_pkey" PRIMARY KEY ("id")
);
