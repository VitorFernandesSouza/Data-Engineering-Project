# Ecommerce Views

Aqui ficam as views analíticas do projeto Olist, organizadas para servir como camada de consumo para o Power BI.

## Exemplos esperados

- `vw_sales.sql`: consolida vendas, clientes, produtos e categorias.
- outras views podem ser criadas para faturamento, pedidos, desempenho por vendedor e avaliação.

## Boas práticas

- manter nomes padronizados com prefixo `vw_`;
- reutilizar dimensões e fatos já modelados;
- evitar lógica duplicada entre views;
- documentar cada view com finalidade, origem e uso.
