<MobileApp>
  <Include src="./functions.rsx" />
  <TabScreen
    id="tabscreen"
    items={[
      {
        ordered: [
          { screen: "peopleListScreen" },
          { icon: "bold/interface-text-formatting-list-bullets" },
        ],
      },
      {
        ordered: [
          { screen: "myProfileScreen" },
          { icon: "bold/interface-user-single" },
        ],
      },
    ]}
  />
  <Include src="./src/peopleListScreen.rsx" />
  <Include src="./src/peopleDetailsScreen.rsx" />
  <Include src="./src/myProfileScreen.rsx" />
</MobileApp>
