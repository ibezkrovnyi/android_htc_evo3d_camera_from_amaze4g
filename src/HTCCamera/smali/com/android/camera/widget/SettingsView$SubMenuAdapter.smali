.class Lcom/android/camera/widget/SettingsView$SubMenuAdapter;
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
    name = "SubMenuAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreference:Landroid/preference/ListPreference;

.field final synthetic this$0:Lcom/android/camera/widget/SettingsView;


# direct methods
.method public constructor <init>(Lcom/android/camera/widget/SettingsView;Landroid/content/Context;Landroid/preference/ListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p3, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    iput-object p2, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getIconId(Ljava/lang/CharSequence;)I
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020040

    goto :goto_0

    :cond_2
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f02005f

    goto :goto_0

    :cond_3
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f020055

    goto :goto_0

    :cond_4
    const-string v0, "sports"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f020069

    goto :goto_0

    :cond_5
    const-string v0, "flowers"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f020059

    goto :goto_0

    :cond_6
    const-string v0, "backlight"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f020042

    goto :goto_0

    :cond_7
    const-string v0, "beach"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f020043

    goto :goto_0

    :cond_8
    const-string v0, "snow"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f020068

    goto :goto_0

    :cond_9
    const-string v0, "sunset"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f02006b

    goto :goto_0

    :cond_a
    const-string v0, "candlelight"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f020048

    goto :goto_0

    :cond_b
    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f020058

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_scene"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_video_scene"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    const v6, 0x7f030044

    invoke-static {v5, p2, v6, p3, v7}, Lcom/android/camera/widget/SettingsView;->access$900(Lcom/android/camera/widget/SettingsView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v5, 0x7f08017d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    aget-object v5, v2, p1

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/camera/ViewUtil;->getModifiedRadioBtn(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    return-object p2

    :cond_2
    invoke-static {v1}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    const v6, 0x7f03002a

    invoke-static {v5, p2, v6, p3, v7}, Lcom/android/camera/widget/SettingsView;->access$900(Lcom/android/camera/widget/SettingsView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v5}, Lcom/android/camera/widget/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08008b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-direct {p0, v6}, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->getIconId(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f08011d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aget-object v6, v2, p1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f080122

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    const/4 v6, 0x1

    invoke-static {v5, p2, v6}, Lcom/android/camera/widget/SettingsView;->access$1000(Lcom/android/camera/widget/SettingsView;Landroid/view/View;Z)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "pref_fast_fps"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$1100(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_set_resolution"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$700(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/MenuHandler;->getMenuResolutionItem(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1080p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$700(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/MenuHandler;->getMenuResolutionItem(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QCIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-eq p3, v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, p3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-static {v2, v3, p3}, Lcom/android/camera/widget/SettingsView;->access$1200(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;I)V

    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v2}, Lcom/android/camera/widget/SettingsView;->access$1300(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v2}, Lcom/android/camera/widget/SettingsView;->access$700(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$SubMenuAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-static {v2}, Lcom/android/camera/widget/SettingsView;->access$700(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->closeMainPanel()V

    goto :goto_0
.end method
