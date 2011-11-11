.class Lcom/android/camera/widget/SettingsView$MainMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainMenuAdapter"
.end annotation


# instance fields
.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/widget/SettingsView;


# direct methods
.method public constructor <init>(Lcom/android/camera/widget/SettingsView;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p3, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->mPreferences:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    instance-of v1, v0, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    instance-of v1, v0, Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    instance-of v1, v0, Landroid/preference/Preference;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->mPreferences:Ljava/util/ArrayList;

    move-object v15, v0

    move-object v0, v15

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    instance-of v15, v11, Landroid/preference/PreferenceGroup;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    move-object v15, v0

    const v16, 0x7f030027

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-object/from16 v3, p3

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/widget/SettingsView;->access$900(Lcom/android/camera/widget/SettingsView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, v11

    check-cast v0, Landroid/preference/PreferenceGroup;

    move-object v8, v0

    const v15, 0x7f08011d

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    move-object v15, v0

    invoke-virtual {v11}, Landroid/preference/Preference;->isEnabled()Z

    move-result v16

    move-object v0, v15

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/camera/widget/SettingsView;->access$1000(Lcom/android/camera/widget/SettingsView;Landroid/view/View;Z)V

    return-object p2

    :cond_1
    instance-of v15, v11, Landroid/preference/ListPreference;

    if-eqz v15, :cond_4

    move-object v0, v11

    check-cast v0, Landroid/preference/ListPreference;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    move-object v15, v0

    const v16, 0x7f030028

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-object/from16 v3, p3

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/widget/SettingsView;->access$900(Lcom/android/camera/widget/SettingsView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v15, 0x7f08011d

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f08011e

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_2

    const-string v15, ""

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    :cond_3
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    instance-of v15, v11, Landroid/preference/CheckBoxPreference;

    if-eqz v15, :cond_7

    move-object v0, v11

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    move-object v15, v0

    const v16, 0x7f030026

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-object/from16 v3, p3

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/widget/SettingsView;->access$900(Lcom/android/camera/widget/SettingsView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v15, 0x7f08011d

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    const v15, 0x7f08011f

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v15, 0x7f08011e

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v6, :cond_5

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v15

    :goto_1
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    const-string v15, "pref_camera_switch"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v15

    goto :goto_1

    :cond_6
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    instance-of v15, v11, Landroid/preference/Preference;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    move-object v15, v0

    const v16, 0x7f030028

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-object/from16 v3, p3

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/widget/SettingsView;->access$900(Lcom/android/camera/widget/SettingsView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v15, 0x7f08011d

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f08011e

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    instance-of v15, v11, Lcom/android/camera/widget/CustomPreference;

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/camera/widget/SettingsView;->access$700(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;

    move-result-object v15

    invoke-virtual {v15, v11}, Lcom/android/camera/MenuHandler;->getSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v12

    :cond_8
    if-eqz v12, :cond_9

    const-string v15, ""

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    :cond_9
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    instance-of v1, v0, Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v8, v6, Landroid/preference/ListPreference;

    if-eqz v8, :cond_4

    move-object v0, v6

    check-cast v0, Landroid/preference/ListPreference;

    move-object v5, v0

    new-instance v1, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v9, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v9}, Lcom/android/camera/widget/SettingsView;->access$100(Lcom/android/camera/widget/SettingsView;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v8, v9, v5}, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;-><init>(Lcom/android/camera/widget/SettingsView;Landroid/content/Context;Landroid/preference/ListPreference;)V

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v4, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$300(Lcom/android/camera/widget/SettingsView;)Landroid/widget/LinearLayout;

    move-result-object v8

    const v9, 0x7f08011b

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$300(Lcom/android/camera/widget/SettingsView;)Landroid/widget/LinearLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v9}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$300(Lcom/android/camera/widget/SettingsView;)Landroid/widget/LinearLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v9}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/camera/widget/SettingsView;->access$402(Lcom/android/camera/widget/SettingsView;Landroid/view/View;)Landroid/view/View;

    :cond_2
    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_set_white_balance"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$000(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/widget/SlidingDrawer;

    move-result-object v8

    const-string v9, "pref_set_white_balance"

    invoke-virtual {v8, v9}, Lcom/android/camera/widget/SlidingDrawer;->setTag(Ljava/lang/Object;)V

    :cond_3
    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$500(Lcom/android/camera/widget/SettingsView;)V

    goto/16 :goto_0

    :cond_4
    instance-of v8, v6, Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_7

    move-object v0, v6

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_1
    invoke-static {v8, v3, v9}, Lcom/android/camera/widget/SettingsView;->access$600(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;Z)V

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const v8, 0x7f08011f

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v8, 0x7f08011e

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v8

    :goto_2
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_2

    :cond_7
    instance-of v8, v6, Lcom/android/camera/widget/CustomPreference;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$300(Lcom/android/camera/widget/SettingsView;)Landroid/widget/LinearLayout;

    move-result-object v8

    const v9, 0x7f08011b

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$300(Lcom/android/camera/widget/SettingsView;)Landroid/widget/LinearLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v9}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :goto_3
    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v9, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v9}, Lcom/android/camera/widget/SettingsView;->access$700(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/camera/MenuHandler;->getCustomView(Landroid/preference/Preference;)Landroid/view/View;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/widget/SettingsView;->access$402(Lcom/android/camera/widget/SettingsView;Landroid/view/View;)Landroid/view/View;

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$300(Lcom/android/camera/widget/SettingsView;)Landroid/widget/LinearLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v9}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8
    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$500(Lcom/android/camera/widget/SettingsView;)V

    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_camera_image_property"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "choose_exposure"

    const-string v9, "complete"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->atsLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "choose_Image_properties"

    const-string v9, "complete"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->atsLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8}, Lcom/android/camera/widget/SettingsView;->access$300(Lcom/android/camera/widget/SettingsView;)Landroid/widget/LinearLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v9}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_a
    iget-object v8, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v8, v6}, Lcom/android/camera/widget/SettingsView;->access$800(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;)V

    goto/16 :goto_0
.end method

.method public updateAdapter(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method
