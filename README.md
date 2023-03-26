# Example

## Basic

- http://127.0.0.1:3000/api/orders
- http://127.0.0.1:3000/api/orders/1

## Filter

- http://127.0.0.1:3000/api/orders?filter[user]=3

## Paginator
- http://127.0.0.1:3000/api/orders?page[offset]=0&page[limit]=2


## Sideloading
- http://127.0.0.1:3000/api/orders/1?include=tickets.event

## Sparse Fieldsets
- http://127.0.0.1:3000/api/orders/1?fields[events]=name
- http://127.0.0.1:3000/api/orders/1?include=tickets.event&fields[events]=name&fields[tickets]=event-id,order-id
