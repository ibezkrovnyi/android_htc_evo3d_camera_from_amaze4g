.class public Lcom/android/camera/widget/SettingsView;
.super Landroid/widget/FrameLayout;
.source "SettingsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/SettingsView$SubMenuAdapter;,
        Lcom/android/camera/widget/SettingsView$MainMenuAdapter;,
        Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;,
        Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsView"


# instance fields
.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mCustomView:Landroid/view/View;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsVisible:Z

.field private mMainAdapter:Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

.field private mMainList:Landroid/widget/ListView;

.field private mMainMenu:Landroid/widget/LinearLayout;

.field private mMenuHandler:Lcom/android/camera/MenuHandler;

.field private mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

.field private mSubList:Landroid/widget/ListView;

.field private mSubMenu:Landroid/widget/LinearLayout;

.field private mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

.field private mSubPanel:Lcom/android/camera/widget/SlidingDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/MenuHandler;Landroid/preference/PreferenceScreen;Lcom/android/camera/widget/SlidingDrawer;Lcom/android/camera/CameraThread;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/android/camera/widget/SettingsView;->mIsVisible:Z

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030029

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iput-object p2, p0, Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    iput-object p5, p0, Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;

    const v0, 0x7f080120

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainMenu:Landroid/widget/LinearLayout;

    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList:Landroid/widget/ListView;

    iput-object p4, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    const v0, 0x7f08011a

    invoke-virtual {p4, v0}, Lcom/android/camera/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubMenu:Landroid/widget/LinearLayout;

    const v0, 0x7f08011c

    invoke-virtual {p4, v0}, Lcom/android/camera/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/widget/SettingsView;->setSubPanelVisible(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/widget/SettingsView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/SettingsView$1;-><init>(Lcom/android/camera/widget/SettingsView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerCloseListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;)V

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/widget/SettingsView$2;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/SettingsView$2;-><init>(Lcom/android/camera/widget/SettingsView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerOpenListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/widget/SettingsView$3;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/SettingsView$3;-><init>(Lcom/android/camera/widget/SettingsView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerScrollListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;)V

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    invoke-direct {p0, p3}, Lcom/android/camera/widget/SettingsView;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/widget/SlidingDrawer;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/SettingsView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/widget/SettingsView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/SettingsView;->setEnabledStateOnViews(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/CameraThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/SettingsView;->updateListPreference(Landroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/widget/SettingsView$MainMenuAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter:Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/widget/SettingsView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubMenu:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/SettingsView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/widget/SettingsView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SettingsView;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/widget/SettingsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/SettingsView;->showSubMenu()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/SettingsView;->updateCheckBoxPreference(Landroid/preference/Preference;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/widget/SettingsView;->updatePreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/widget/SettingsView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/widget/SettingsView;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    instance-of v5, p0, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/preference/PreferenceGroup;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera/widget/SettingsView;->addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 5

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/camera/widget/SettingsView;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/camera/widget/SettingsView;->addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v1}, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;-><init>(Lcom/android/camera/widget/SettingsView;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter:Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter:Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter:Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setSubPanelVisible(Z)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->close()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->hideCustomView()V

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSubMenu()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->animateOpen()V

    :cond_0
    return-void
.end method

.method private updateCheckBoxPreference(Landroid/preference/Preference;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;->onCheckBoxPreferenceUpdated(Landroid/preference/Preference;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SettingsView"

    const-string v1, "updateCheckBoxPreference - mPreferenceListener = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateListPreference(Landroid/preference/Preference;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;->onListPreferenceUpdated(Landroid/preference/Preference;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SettingsView"

    const-string v1, "updateListPreference - mPreferenceListener = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreference(Landroid/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;->onPreferenceUpdated(Landroid/preference/Preference;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SettingsView"

    const-string v1, "updateCheckBoxPreference - mPreferenceListener = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public closeSubMenu(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->hideCustomView()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->animateClose()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/SettingsView;->mIsVisible:Z

    return v0
.end method

.method public notifyMainLayoutChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter:Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter:Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public releaseOnScreenSettings()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainMenu:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubMenu:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubList:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mCustomView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter:Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    return-void
.end method

.method public setOnPreferenceUpdatedListener(Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    return-void
.end method

.method public setOnSubMenuOpenedListenerListener(Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SettingsView;->mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/widget/SettingsView;->mIsVisible:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/widget/SettingsView;->mIsVisible:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter:Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter:Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/SettingsView;->setSubPanelVisible(Z)V

    goto :goto_0
.end method

.method public updatePreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 5

    const-string v4, "SettingsView"

    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter:Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    if-nez v3, :cond_0

    const-string v3, "SettingsView"

    const-string v3, "updatePreferenceScreen failed, mMainAdapter = null"

    invoke-static {v4, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainMenu:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    const-string v3, "SettingsView"

    const-string v3, "updatePreferenceScreen failed, mMainMenu = null"

    invoke-static {v4, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/camera/widget/SettingsView;->addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter:Lcom/android/camera/widget/SettingsView$MainMenuAdapter;

    invoke-virtual {v3, v1}, Lcom/android/camera/widget/SettingsView$MainMenuAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateSubMenuWidth(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView;->mSubMenu:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView;->mSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView;->mSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
