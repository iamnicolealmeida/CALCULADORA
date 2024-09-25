local op1, op2, escolha, resposta

function Numeros()
    os.execute('cls')
    io.write('Insira o primeiro número: ')
    op1 = tonumber(io.read()) -- apenas numeros
    while not op1 do -- se op1 nao for um numero ele vai printar e continuar o loop ate a condicao ser verdadeira
        print('Introduza um valor numérico válido!')
        io.write('Insira o primeiro número: ')
        op1 = tonumber(io.read())
    end
    os.execute('cls')
    io.write('Insira o segundo número: ')
    op2 = tonumber(io.read())
    while not op2 do
        print('Introduza um valor numérico válido!')
        io.write('Insira o segundo número: ')
        op2 = tonumber(io.read())
    end
end

function Confirmacao()
    io.write('Pretende inserir mais números? (S/N) ')
    resposta = io.read()
    if resposta:lower() == 's' or resposta:lower() == 'sim' then -- lower para lowercase
        return true -- voltar ao menu de inserir 
    elseif resposta:lower() == 'n' or resposta:lower() == 'não' or resposta:lower() == 'nao' then
        return false -- acabar com o clico
    else
        print('Resposta inválida. Por favor, insira "S" para sim ou "N" para não.')
        return Confirmacao() -- Repete a pergunta se a resposta for inválida
    end
end

function Menu()
    os.execute('cls')
    print('[1] - ADICAO')
    print('[2] - MULTIPLICACAO')
    print('[3] - SUBTRACAO')
    print('[4] - DIVISAO')
    print('[5] - SAIR')
end

function Adicao()
    os.execute('cls')
    print('ADIÇÃO')
    local soma = op1 + op2
    print('RESULTADO: ', soma)
end

function Multiplicacao()
    os.execute('cls')
    print('MULTIPLICAÇÃO')
    local produto = op1 * op2
    print('RESULTADO: ', produto)
end

function Subtracao()
    os.execute('cls')
    print('SUBTRAÇÃO')
    local diferenca = op1 - op2
    print('RESULTADO: ', diferenca)
end

function Divisao()
    os.execute('cls')
    print('DIVISÃO')
    if op2 <= 0 then
        print('Erro: Divisão por zero!')
    else
        local quociente = op1 / op2
        print('RESULTADO: ', quociente)
    end
end

while true do
    Menu()
    io.write('ESCOLHA UMA OPÇÃO - ')
    escolha = io.read()
    if escolha == '1' then
        Numeros()
        Adicao()
        if not Confirmacao() then break end
    elseif escolha == '2' then
        Numeros()
        Multiplicacao()
        if not Confirmacao() then break end
    elseif escolha == '3' then
        Numeros()
        Subtracao()
        if not Confirmacao() then break end
    elseif escolha == '4' then
        Numeros()
        Divisao()
        if not Confirmacao() then break end
    elseif escolha == '5' then
        break
    else
        print('Opção inválida, tente novamente.')
    end
end
