.class Lcom/android/camera/IntentManager$SharedAdapter;
.super Landroid/widget/BaseAdapter;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/IntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharedAdapter"
.end annotation


# static fields
.field public static final EXPAND_INDEX:I = 0x4

.field public static final EXPAND_LIMIT:I = 0x6


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mApList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/IntentManager$CustomAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandable:Z

.field private mExpanded:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastSharePrefName:Ljava/lang/String;

.field private packageNameOrder:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/IntentManager$CustomAppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/IntentManager$SharedAdapter;->packageNameOrder:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mExpandable:Z

    iput-boolean v2, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mExpanded:Z

    iput-object p2, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mLastSharePrefName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/IntentManager$SharedAdapter;->packageNameOrder:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/IntentManager$SharedAdapter;->rearrangeList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/IntentManager$SharedAdapter;->rearrangeList_DOT()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v0, v1

    const-string v1, "IntentManager"

    const-string v2, "Ourr Exception"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$200(Lcom/android/camera/IntentManager$SharedAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/android/camera/IntentManager$CustomAppInfo;)V
    .locals 5

    iget-object v4, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x2020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x202001a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p2}, Lcom/android/camera/IntentManager$SharedAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/IntentManager$CustomAppInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, p2, Lcom/android/camera/IntentManager$CustomAppInfo;->fake:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p2, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p2, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    iget v4, v4, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private getOrderKeyString()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private rearrangeList()V
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/IntentManager$SharedAdapter;->getOrderKeyString()[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object v0, v14

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/IntentManager$SharedAdapter;->sortList()V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/IntentManager$CustomAppInfo;

    move-object v0, v8

    iget-object v0, v0, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "IntentManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mLastSharePrefName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v11, 0x0

    if-eqz v12, :cond_3

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/IntentManager$CustomAppInfo;

    if-eqz v11, :cond_3

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_3
    move-object v5, v14

    array-length v13, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v13, :cond_5

    aget-object v9, v5, v7

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/IntentManager$CustomAppInfo;

    if-eqz v8, :cond_4

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    const-string v17, "IntentManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "alphabetical: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/camera/IntentManager$SharedAdapter;->sortAlphabetical(Landroid/content/pm/PackageManager;I)V

    goto/16 :goto_0
.end method

.method private rearrangeList_DOT()V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/IntentManager$SharedAdapter;->packageNameOrder:[Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/IntentManager$SharedAdapter;->packageNameOrder:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IntentManager$CustomAppInfo;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/camera/IntentManager$SharedAdapter;->packageNameOrder:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private sortAlphabetical(Landroid/content/pm/PackageManager;I)V
    .locals 10

    const/4 v9, 0x1

    iget-object v8, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-le v3, p2, :cond_2

    sub-int v6, p2, v9

    :goto_1
    sub-int v8, v3, v9

    if-ge v6, v8, :cond_1

    move v4, v6

    add-int/lit8 v5, v6, 0x1

    iget-object v8, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IntentManager$CustomAppInfo;

    iget-object v8, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IntentManager$CustomAppInfo;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/IntentManager$SharedAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/IntentManager$CustomAppInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/IntentManager$SharedAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/IntentManager$CustomAppInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v8, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v8, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private sortList()V
    .locals 13

    const/4 v11, 0x0

    const-string v12, "IntentManager"

    iget-object v9, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "IntentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Total ap numbers:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v9, "ro.cid"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    :goto_0
    iget-object v9, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IntentManager$CustomAppInfo;

    iget-object v9, v0, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "ORANG309"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ORANGB10"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    if-nez v4, :cond_2

    const/4 v3, 0x1

    :cond_0
    :goto_1
    if-eqz v3, :cond_3

    const-string v9, "IntentManager"

    const-string v9, "first app found!"

    invoke-static {v12, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IntentManager$CustomAppInfo;

    iget-object v9, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v9, v11, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v9, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v3, :cond_4

    const/4 v9, 0x2

    :goto_2
    invoke-direct {p0, v8, v9}, Lcom/android/camera/IntentManager$SharedAdapter;->sortAlphabetical(Landroid/content/pm/PackageManager;I)V

    return-void

    :cond_2
    invoke-virtual {p0, v8, v0}, Lcom/android/camera/IntentManager$SharedAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/IntentManager$CustomAppInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x1

    goto :goto_2
.end method


# virtual methods
.method public expand()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mExpanded:Z

    return-void
.end method

.method public expandable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mExpandable:Z

    return-void
.end method

.method public getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/IntentManager$CustomAppInfo;)Ljava/lang/CharSequence;
    .locals 5

    iget-object v2, p2, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    iget-object v0, p2, Lcom/android/camera/IntentManager$CustomAppInfo;->fake:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v3

    :cond_0
    move-object v3, v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mActivity:Landroid/app/Activity;

    iget v4, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mExpandable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mExpanded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x5

    :cond_0
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    iget-boolean v5, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mExpandable:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mExpanded:Z

    if-nez v5, :cond_0

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v5, v6, :cond_0

    const/4 v5, 0x4

    if-ne v5, p1, :cond_0

    iget-object v5, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mActivity:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x2090071

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const v5, 0x2020010

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x1040308

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x202001a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x2080345

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v4, v3

    :goto_0
    return-object v4

    :cond_0
    if-nez p2, :cond_1

    iget-object v5, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x2090078

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    :goto_1
    iget-object v5, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/IntentManager$CustomAppInfo;

    invoke-direct {p0, v3, v5}, Lcom/android/camera/IntentManager$SharedAdapter;->bindView(Landroid/view/View;Lcom/android/camera/IntentManager$CustomAppInfo;)V

    move-object v4, v3

    goto :goto_0

    :cond_1
    move-object v3, p2

    goto :goto_1
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 11

    const/4 v6, 0x1

    const-string v10, "com.htc.HTCAlbum.action.LAUNCH_UPLOAD_EDITOR"

    const-string v9, "Share - action name: com.htc.HTCAlbum.action.LAUNCH_UPLOAD_EDITOR"

    const-string v8, "Launch_Service"

    const-string v7, "IntentManager"

    iget-object v4, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x300

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IntentManager$CustomAppInfo;

    iget-object v4, v2, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    sget-boolean v4, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.htc.socialnetwork.facebook"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    const-string v4, "com.htc.HTCAlbum.action.LAUNCH_UPLOAD_EDITOR"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Launch_Service"

    const-string v4, "Facebook"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "IntentManager"

    const-string v4, "Share - action name: com.htc.HTCAlbum.action.LAUNCH_UPLOAD_EDITOR"

    invoke-static {v7, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v4, v3

    goto :goto_0

    :cond_1
    sget-boolean v4, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-eqz v4, :cond_2

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.htc.socialnetwork.flickr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_2

    const-string v4, "com.htc.HTCAlbum.action.LAUNCH_UPLOAD_EDITOR"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Launch_Service"

    const-string v4, "Flickr"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "IntentManager"

    const-string v4, "Share - action name: com.htc.HTCAlbum.action.LAUNCH_UPLOAD_EDITOR"

    invoke-static {v7, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v2, Lcom/android/camera/IntentManager$CustomAppInfo;->action:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "IntentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Share - action name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "IntentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Share - package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "IntentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Share - class name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mExpanded:Z

    return v0
.end method

.method public shrink()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/IntentManager$SharedAdapter;->mExpanded:Z

    return-void
.end method
