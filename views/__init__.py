from .animal_requests import (get_all_animals,
                                get_single_animal,
                                get_animals_by_location,
                                get_animals_by_status,
                                create_animal,
                                delete_animal,
                                update_animal)
from .location_requests import (get_all_locations,
                                get_single_location,
                                create_location,
                                delete_location,
                                update_location)
from .customer_requests import (get_all_customers,
                                get_single_customer,
                                get_customers_by_email,
                                create_customer,
                                delete_customer,
                                update_customer)
from .employee_requests import (get_all_employees,
                                get_single_employee,
                                get_employees_by_location,
                                create_employee,
                                delete_employee,
                                update_employee)