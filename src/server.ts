import express from 'express';
import cors from 'cors';
import 'dotenv/config';
import { prismaRepository } from './prisma.repository';

const app = express();
app.use(express.json());
app.use(cors());

// definição das rotas
app.post('/store', async(request, response)=>{
    const dados = request.body;

    if(!dados.nome){
        return response.status(400).json({
            message: "Nome obrigatório."
        })
    }
    if(!dados.idade){
        return response.status(400).json({
            message: "Idade obrigatório."
        })
    }
    if(!dados.email){
        return response.status(400).json({
            message: "Email obrigatório."
        })
    }
    if(!dados.password){
        return response.status(400).json({
            message: "Senha obrigatório."
        })
    }

    const usuarioCadastrado = await prismaRepository.usuario.create({
        data:{
            nome: dados.nome,
            idade: dados.idade,
            email: dados.email,
            password: dados.password,
            github: dados.github
        }
    })
    return response.status(201).json({
        message: 'Usuário cadastrado com sucesso.',
        data: usuarioCadastrado
    })
})

app.listen(process.env.PORT, () => {
    console.log(`Server is running on ${process.env.PORT}.`);    
})