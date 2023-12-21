<template>
  <v-form v-model="valid" @submit.prevent="submitForm">
    <v-container>
      <v-row>
        <v-col
          cols="12"
          md="12"
        >
          <v-card
            class="mx-auto"
          >
            <v-card-item>
              <div>
                <div class="text-h5 mb-1">
                  Basic Info
                </div>
                <div class="caption text-secondary">
                  Name your event and tell event-goers why they should come. Add details that highlight what makes it unique.
                </div>
              </div>
            </v-card-item>
          </v-card>
        </v-col>
      </v-row>

      <v-row>
        <v-col
          cols="12"
          md="12"
        >
          <v-card
            class="mx-auto"
          >
            <div class="text-h5 mb-1 bold">
              Event Info
            </div>
            <v-card-item>
              <v-text-field
                v-model="event_name"
                label="Event Title"
                variant="outlined"
                required
              />
            </v-card-item>
          </v-card>
        </v-col>
      </v-row>

      <v-row>
        <v-col
          cols="6"
          md="6"
        >
          <v-combobox
            label="Type"
            :items="eventTypes"
          />
        </v-col>
        <v-col
          cols="6"
          md="6"
        >
          <v-combobox
            label="Category"
            :items="eventCategories"
          />
        </v-col>
      </v-row>

      <v-row>
        <v-col
          cols="12"
          md="12"
        >
          <h1>
            Location
          </h1>
          <p>
            Help people in the area discover your event and let attendees know where to show up.
          </p>
        </v-col>
      </v-row>

      <v-row>
        <v-col
          cols="12"
          md="12"
        >
          <v-text-field
            v-model="event_location"
            label="Location"
          />
        </v-col>
      </v-row>

      <!-- <v-row>
        <v-col cols="12" sm="6" md="4">
          <v-btn block rounded="xl" size="x-large">
            Venue
          </v-btn>
        </v-col>
        <v-col cols="12" sm="6" md="4">
          <v-btn block rounded="xl" size="x-large">
            Online Event
          </v-btn>
        </v-col>
        <v-col cols="12" sm="6" md="4">
          <v-btn block rounded="xl" size="x-large">
            To be announced
          </v-btn>
        </v-col>
      </v-row> -->

      <v-row>
        <v-col
          cols="12"
          md="12"
        >
          <h1>
            Date and time
          </h1>
          <p>
            Tell event-goers when your event starts and ends so they can make plans to attend.
          </p>
        </v-col>
      </v-row>

      <v-row>
        <v-col
          cols="12"
          md="12"
        >
          <v-date-picker
            color="primary"
          />
        </v-col>
      </v-row>
    </v-container>
    <v-btn type="submit" block class="mt-2">
      Submit
    </v-btn>
  </v-form>
</template>

<script>
export default {
  data () {
    return {
      valid: false,
      event_name: '',
      event_location: '',
      eventTypes: [
        'Appearance or Signing', 'Attraction', 'Camp, Trip, or Retreat',
        'Class, Training, or Workshop', 'Concert or Performance', 'Conference',
        'Convention', 'Dinner or Gala', 'Festival or Fair', 'Game or Competition',
        'Meeting or Networking Event', 'Other', 'Party or Social Gathering',
        'Race or Endurance Event', 'Rally', 'Screening', 'Seminar or Talk',
        'Tour', 'Tournament', 'Tradeshow, Consumer Show, or Expo'
      ],
      eventCategories: [
        'Auto, Boat & Air', 'Business & Professional',
        'Charity & Causes', 'Community & Culture', 'Family & Education',
        'Fashion & Beauty', 'Film, Media & Entertainment', 'Food & Drink',
        'Government & Politics', 'Health & Wellness', 'Hobbies & Special Interest',
        'Home & Lifestyle', 'Music', 'Other', 'Performing & Visual Arts',
        'Religion & Spirituality', 'School Activities', 'Science & Technology',
        'Seasonal & Holiday', 'Sports & Fitness', 'Travel & Outdoor'
      ]
    }
  },
  methods: {
    submitForm () {
    //   if (this.$refs.form.validate()) {
      // Form is valid, perform submission logic here
      console.log('Form submitted!')
    //   }
    }
  }
}
</script>

<style scoped>
  .v-card {
    padding: 20px
  }
</style>
