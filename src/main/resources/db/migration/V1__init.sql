create table product (id varchar(255) not null, model_number varchar(255), name varchar(255), product_type varchar(255), primary key (id)) engine=InnoDB;
create table product_description (product_id varchar(255) not null, subtitle varchar(255), text varchar(255), title varchar(255), primary key (product_id)) engine=InnoDB;
create table product_meta_data (product_id varchar(255) not null, canonical varchar(255), description varchar(255), page_title varchar(255), site_name varchar(255), primary key (product_id)) engine=InnoDB;
create table product_meta_data_keywords (metadata_product_id varchar(255) not null, keywords varchar(255)) engine=InnoDB;
create table product_pricing (product_id varchar(255) not null, current_price float not null, standard_price float not null, standard_price_no_vat float not null, primary key (product_id)) engine=InnoDB;
alter table product_description add constraint FK9iiotbwtk1n1b6dgga729sg9q foreign key (product_id) references product (id);
alter table product_meta_data add constraint FKicj3wymsllyyrftpvs3v03xdx foreign key (product_id) references product (id);
alter table product_meta_data_keywords add constraint FKk9a3gbkfs0mgo5vnu8ytanq31 foreign key (metadata_product_id) references product_meta_data (product_id);
alter table product_pricing add constraint FK5j25ye9xranqe8ycy19cwm82m foreign key (product_id) references product (id);