INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (10, '', 0, '1', 1, 6, '1,2,3,4,7,6,5,9,8', 9, 0, 1, 0, 0, '11', 1, null, 'Egyéb kiegészítő erőforrások', null, null, null, null, null);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (1, '10', 1, '2', 1, 5, '2,3,4,7,6,5,9,8', 8, 0, 2, 0, 1, '', 0, '02', 'Bontás, építőanyagok újrahasznosítása', null, null, null, null, 10);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (11, '', 0, '12', 1, 6, '12,13,14,17,16,15', 6, 1, 1, 0, 10, '10', 1, null, 'Keverékek és ideiglenes segédszerkezetek', null, null, null, null, null);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (12, '11', 1, '13', 1, 5, '13,14,17,16,15', 5, 0, 2, 0, 11, '', 0, '11', 'Keverékkészítés', null, null, null, null, 11);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (13, '11,12', 2, '14', 1, 4, '14,17,16,15', 4, 0, 3, 0, 12, '', 0, '11-001', 'C12/15 szilárdsági osztályú beton', null, null, null, null, 12);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (14, '11,12,13', 3, '15', 1, 3, '17,16,15', 3, 0, 4, 0, 13, '', 0, '11-001-001', 'XN(H) Környezeti hatásoknak nem ellenálló alárendelt jelentőségű beton (ÁTDOLGOZVA: 11-001-12-es tételcsoporttól),', null, null, null, null, 13);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (17, '11,12,13,14,15,16', 6, '', 0, 0, '', 0, 0, 7, 0, 14, '', 0, '11-001-001.1.1.1', 'm = 6,2 finomsági modulusú adalékanyaggal', null, null, null, null, 16);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (16, '11,12,13,14,15', 5, '17', 1, 1, '17', 1, 0, 6, 0, 15, '', 0, '11-001-001.1.1', 'földnedves beton,', null, null, null, null, 15);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (15, '11,12,13,14', 4, '16', 1, 2, '17,16', 2, 0, 5, 0, 16, '', 0, '11-001-001.1', 'C8/10 - XN(H) - D?max = 16 mm, CEM 32,5 szilárdsági osztályú portlandcementtel,', null, null, null, null, 14);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (2, '10,1', 2, '3', 1, 4, '3,4,7,6,5,9,8', 7, 0, 3, 0, 2, '', 0, '02-001', 'Gépi bontási munkák', null, null, null, null, 1);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (3, '10,1,2', 3, '4', 1, 3, '4,7,6,5,9,8', 6, 0, 4, 0, 3, '', 0, '02-001-001', 'Épületek szanálás jellegű bontása, gépi erővel,', null, null, null, null, 2);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (4, '10,1,2,3', 4, '5,8', 2, 2, '7,6,5,9,8', 5, 0, 5, 0, 4, '', 0, '02-001-001.1', 'kotró- rakodógépp', null, null, null, null, 3);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (7, '10,1,2,3,4,5', 6, '', 0, 0, '', 0, 0, 7, 0, 5, '6', 1, '02-001-001.1.1.2', 'teljesítmény: 40-49 kW', null, null, null, null, 5);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (6, '10,1,2,3,4,5', 6, '', 0, 0, '', 0, 1, 7, 0, 6, '7', 1, '02-001-001.1.1.1', 'teljesítmény: 30-39 kW', null, null, null, null, 5);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (5, '10,1,2,3,4', 5, '7,6', 2, 1, '7,6', 2, 0, 6, 0, 7, '8', 1, '02-001-001.1.1', '5 tonna önsúly', null, null, null, null, 4);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (9, '10,1,2,3,4,8', 6, '', 0, 0, '', 0, 0, 7, 0, 8, '', 0, '02-001-001.1.2.1', 'teljesítmény: 50-59 kW', null, null, null, null, 8);
INSERT INTO public."ENGY_App_category" (id, tn_ancestors_pks, tn_ancestors_count, tn_children_pks, tn_children_count, tn_depth, tn_descendants_pks, tn_descendants_count, tn_index, tn_level, tn_priority, tn_order, tn_siblings_pks, tn_siblings_count, "itemNumber", description, quantity, unit, "unitPriceOfMaterial", "pricePerUnit", tn_parent_id) VALUES (8, '10,1,2,3,4', 5, '9', 1, 1, '9', 1, 1, 6, 0, 9, '5', 1, '02-001-001.1.2', '5 tonna önsúly felett,', null, null, null, null, 4);