# Sistemas-Digitais
Material da aula de sistemas digitais para meus manos poderem estudar

## Instalação
A versão do quartus utlizada nas aulas é a [quartus 2 13.0 sp1](https://www.intel.com/content/www/us/en/software-kit/711791/intel-quartus-ii-web-edition-design-software-version-13-0sp1-for-windows.html) devido o modelo da FPGA [EP2C35F672C6](https://br.mouser.com/ProductDetail/Altera/EP2C35F672C6?qs=jblrfmjbeiFXyTmssLjaRA%3D%3D&srsltid=AfmBOooS4BW0Sl2LeEB8vr_AoqLctsyiT7Sr3cTK78LIWsCnljQn0dVp)


## Ferramentas
Para construir os mapas k é usado nas aulas o [Karnaugh Map Solver](https://www.charlie-coleman.com/experiments/kmap/)


## Digitos para display sete segmentos

| Código de Entrada (4-bit) | Caractere | Padrão 7-Segmentos 
|---------------------------|-----------|--------------------|
| "0000"                   | 0         | 0111111           |
| "0001"                   | 1         | 0000110           |
| "0010"                   | 2         | 1011011           |
| "0011"                   | 3         | 1001111           |
| "0100"                   | 4         | 1100110           |
| "0101"                   | 5         | 1101101           |
| "0110"                   | 6         | 1111101           |
| "0111"                   | 7         | 0000111           |
| "1000"                   | 8         | 1111111           |
| "1001"                   | 9         | 1100111           |
| "1010"                   | A         | 1110111           |
| "1011"                   | b         | 1111110           |
| "1100"                   | C         | 0111001           |
| "1101"                   | d         | 1011110           |
| "1110"                   | E         | 1111001           |
| "1111"                   | F         | 1110001           |

---

## Procedimento para teste 

### 1. Criar um novo arquivo de simulação

1. Vá em: `File` → `New` → `University Program VWF`.

   ![image](https://github.com/user-attachments/assets/d8809785-9368-402f-becd-424be58fd428)
   
   ![image](https://github.com/user-attachments/assets/02d5e636-0bc0-4315-aeab-336479c587dd)

---

### 2. Inserir os sinais (Nodes)

2. Vá em: `Edit` → `Insert` → `Insert Node or Bus`.

3. Clique em: `Node Finder...`

4. No campo `List`, clique em **List**.

5. Selecione os nodes que serão usados.

6. Clique em `>`, depois `OK` e novamente `OK` para inserir os sinais na simulação.

   ![image](https://github.com/user-attachments/assets/557c3c9d-7f82-4a61-9e0d-ed23fdc60ea7)
   ![image](https://github.com/user-attachments/assets/7564be7e-cae4-4f4e-ab94-24f2b081c32c)
   ![image](https://github.com/user-attachments/assets/274596f5-ab04-4e78-a18b-ddcdba282249)
   ![image](https://github.com/user-attachments/assets/ffcc78a5-58ff-4a85-b730-302d7c1c5427)

---

### 3. Configurar o sinal de contagem (`Count Value`)

7. Selecione o node desejado para **Count Value**.

8. Configure a contagem usando a fórmula abaixo:

   $$
   d = \frac{1000}{n}
   $$

   Onde:

   - \( d \): tempo ou peso por estado  
   - \( n \): número total de estados do node  

   ![image](https://github.com/user-attachments/assets/a17bd1b1-b921-4263-adb8-78b2cc1bc7a2)
   ![image](https://github.com/user-attachments/assets/8848ede9-49cf-4283-a2ae-beb096f3a56f)

---

### 4. Rodar a simulação

9. Vá em: `Simulation` → `Run Functional Simulation`.

   ![image](https://github.com/user-attachments/assets/78ac271c-af9f-4092-b40b-be678df208f4)






