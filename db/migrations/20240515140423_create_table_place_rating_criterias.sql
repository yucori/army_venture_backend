-- migrate:up
CREATE TABLE place_rating_criterias (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  place_id INT NOT NULL,
  rating_criteria_id INT NOT NULL,
  review_count INT DEFAULT 0 NOT NULL,
  score_avg DECIMAL(3,2) DEFAULT 0 NOT NULL,
  CONSTRAINT place_rating_criterias_place_id_FK FOREIGN KEY (place_id) REFERENCES places (id) ON DELETE CASCADE,
  CONSTRAINT place_rating_criterias_rating_criteria_id_FK FOREIGN KEY (rating_criteria_id) REFERENCES rating_criterias (id) ON DELETE CASCADE
);

-- migrate:down
DROP TABLE place_rating_criterias;
