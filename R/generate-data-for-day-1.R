n_unicorn_visits <- function(nflowers) {
  nflowers / 4
}

unicorns <- data.frame(
  site_1_species_a_nflowers = rpois(100, 10),
  site_2_species_a_nflowers = rpois(100, 10),
  site_3_species_a_nflowers = rpois(100, 10),
  site_1_species_b_nflowers = rpois(100, 20),
  site_2_species_b_nflowers = rpois(100, 20),
  site_3_species_b_nflowers = rpois(100, 20),
  site_1_species_c_nflowers = rpois(100, 30),
  site_2_species_c_nflowers = rpois(100, 30),
  site_3_species_c_nflowers = rpois(100, 30)
)
unicorns$site_1_species_a_nunicorns <-
  n_unicorn_visits(unicorns$site_1_species_a_nflowers)
unicorns$site_2_species_a_nunicorns <-
  n_unicorn_visits(unicorns$site_2_species_a_nflowers)
unicorns$site_3_species_a_nunicorns <-
  n_unicorn_visits(unicorns$site_3_species_a_nflowers)
unicorns$site_1_species_b_nunicorns <-
  n_unicorn_visits(unicorns$site_1_species_b_nflowers)
unicorns$site_2_species_b_nunicorns <-
  n_unicorn_visits(unicorns$site_2_species_b_nflowers)
unicorns$site_3_species_b_nunicorns <-
  n_unicorn_visits(unicorns$site_3_species_b_nflowers)
unicorns$site_1_species_c_nunicorns <-
  n_unicorn_visits(unicorns$site_1_species_c_nflowers)
unicorns$site_2_species_c_nunicorns <-
  n_unicorn_visits(unicorns$site_2_species_c_nflowers)
unicorns$site_3_species_c_nunicorns <-
  n_unicorn_visits(unicorns$site_3_species_c_nflowers)

readr::write_csv(unicorns, here::here("data/unicorns.csv"))
