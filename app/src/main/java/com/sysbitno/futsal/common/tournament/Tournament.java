package com.sysbitno.futsal.common.tournament;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;
import java.time.Instant;

@Data
@Entity
public class Tournament implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator",
            parameters = {
                    @Parameter(
                            name = "uuid_gen_strategy_class",
                            value = "org.hibernate.id.uuid.CustomVersionOneStrategy"
                    )
            }
    )
    private String id;

    @Column(name = "foreign_id")
    private String foreignId;

    @Column(name = "created_at")
    private Instant createdAt = Instant.now();

    @Column(name = "updated_at")
    private Instant updatedAt = Instant.now();

    @Column(name = "deleted_at")
    private Instant deletedAt;

    private String name;

    @Column(name = "starting_at")
    private Instant startingAt;

    @Column(name = "ending_at")
    private Instant endingAt;

    @Column(name = "match_length_min")
    private int matchLengtMin;

    @Column(name = "match_pause_length_min")
    private int matchPauseLengthMin;

    @Column(name = "max_female_teams")
    private int maxFemaleTeams;

    @Column(name = "max_male_teams")
    private int maxMaleTeams;
}
