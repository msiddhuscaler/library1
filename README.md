# Library Management System


![db](https://user-images.githubusercontent.com/97033987/150765112-d38de3b1-1570-4260-93c6-fb69dd424c03.png)


      Enum categories{
        fiction
        science 
        history
        education
      }


      Enum entity{
        person
        book
      }


      Table books {
        uid int [pk, increment] // auto-increment
        title varchar
        author varchar
        category categories
        copies int
      }


      Table persons {
        id int [pk,increment]
        full_name varchar
        phone_number varchar[10]
        email varchar
      }


      Table borrower{
        borrower_id int  [pk,increment]
        uid int  [ref: > books.uid]
        person_id int [ref: > persons.id]
        borrowed_date timestamp
        due_date timestamp
        is_returned bool
      }


      Table availablity{
        id int [pk,increment]
        entity entity
        entity_id int 
        available int 
      }

      Ref: availablity.entity_id > books.uid
      Ref: availablity.entity_id > persons.id
