# Library Management System

![Library Management System](https://user-images.githubusercontent.com/97033987/151696123-25145ba4-084e-498f-b8f3-4693fb590f1e.png)



      


      Enum status{
        active
        inactive
      }


      Enum entity{
        person
        book
      }


      Table books {
        uid bigint [pk, increment] // auto-increment
        title varchar
        author varchar
        category_id int [ref: > category.id]
        copies int

        Indexes {
          (author) 
          (title) 
        }
      }


      Table users {
        id int [pk,increment]
        full_name varchar
        phone_number varchar[10]
        email varchar
      }


      Table borrowers{
        id int  [pk,increment]
        book_uid int  [ref: > books.uid]
        user_id int [ref: > users.id]
        borrowed_date timestamp
        due_date timestamp
        status status
      }


      Table availablity{
        id int [pk,increment]
        entity_type entity
        entity_id bigint
        available int 
      }

      Table category{
        id int [pk,increment]
        name varchar
        Indexes{
          (name)
        }
      }

      Ref: availablity.entity_id > books.uid
      Ref: availablity.entity_id > users.id




