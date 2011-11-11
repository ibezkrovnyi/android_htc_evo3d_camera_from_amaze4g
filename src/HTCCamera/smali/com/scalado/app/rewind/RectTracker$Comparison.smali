.class Lcom/scalado/app/rewind/RectTracker$Comparison;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Comparison"
.end annotation


# instance fields
.field private mDdx:F

.field private mDdy:F

.field private mDeltaIndex:I

.field private mIntersection:Landroid/graphics/Rect;

.field private mOverlap:F

.field private mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

.field private mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    iput-object p3, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    iput p4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDeltaIndex:I

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$Comparison;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;ILcom/scalado/app/rewind/RectTracker$Comparison;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RectTracker$Comparison;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$Comparison;Lcom/scalado/app/rewind/RectTracker$Comparison;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$Comparison;->compare(Lcom/scalado/app/rewind/RectTracker$Comparison;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker$Comparison;)Z
    .locals 1

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$Comparison;->isOk()Z

    move-result v0

    return v0
.end method

.method private compare(Lcom/scalado/app/rewind/RectTracker$Comparison;)I
    .locals 6

    const/4 v5, 0x1

    iget v2, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    iget v3, p1, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v2, v5

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    iget v3, p1, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdx:F

    iget v3, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdx:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdy:F

    iget v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdy:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    iget v2, p1, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdx:F

    iget v3, p1, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdx:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdy:F

    iget v4, p1, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdy:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private init()V
    .locals 6

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->this$0:Lcom/scalado/app/rewind/RectTracker;

    iget v5, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDeltaIndex:I

    invoke-static {v4, v5}, Lcom/scalado/app/rewind/RectTracker;->access$8(Lcom/scalado/app/rewind/RectTracker;I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v5

    add-float v2, v4, v5

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v5

    add-float v3, v4, v5

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    sub-float/2addr v4, v2

    iput v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdx:F

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdy:F

    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mIntersection:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mIntersection:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v4, v1, v5}, Lcom/scalado/app/rewind/RectTracker$Comparison;->intersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v4

    iput v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    return-void
.end method

.method private intersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 5

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v0, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v2, v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    sub-float/2addr v2, v0

    div-float v1, v0, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOk()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "isOk (im=%d, id=%d) -> (im=%d, id=%d) overlap=%f"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->access$5(Ljava/lang/String;)V

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0
.end method
