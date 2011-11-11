.class Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionOptimizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
    }
.end annotation


# static fields
.field private static final MAX_CANDIDATES:I = 0x64

.field private static final MAX_POSSIBILITES:I = 0x186a0


# instance fields
.field private MAX_COST:F

.field private mCandidates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;",
            ">;"
        }
    .end annotation
.end field

.field private mCurBgIndex:I

.field private mEndReached:Z

.field private mNumPossibilities:I

.field private mWorkPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;)V
    .locals 1

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    const v0, 0x3d75c28f

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->MAX_COST:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;)V

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimize()V

    return-void
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z

    return v0
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    return v0
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Lcom/scalado/app/rewind/RectTracker;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    return-object v0
.end method

.method private eval()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v5, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    const/4 v8, 0x0

    invoke-direct {v5, p0, v7, v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;-><init>(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;ILcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)V

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v2, v7, :cond_1

    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$4(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;F)V

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_8

    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z

    return-void

    :cond_1
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v7

    iget v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    if-ne v7, v8, :cond_2

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v7

    iget v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    aput v8, v7, v2

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v7

    aput v10, v7, v2

    invoke-static {v1, v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$5(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v7

    const/4 v8, -0x1

    aput v8, v7, v2

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v7

    aput v10, v7, v2

    invoke-static {v1, v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$5(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V

    goto :goto_2

    :cond_3
    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v8

    invoke-direct {p0, v1, v7, v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->getCost(Lcom/scalado/app/rewind/RectTracker$AbstractFace;II)F

    move-result v0

    cmpg-float v7, v0, v10

    if-gez v7, :cond_4

    invoke-static {v5, v9}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;Z)V

    const/high16 v0, 0x42c8

    :goto_3
    add-float/2addr v6, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v7

    aput v0, v7, v2

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v7

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v8

    aput v8, v7, v2

    goto :goto_2

    :cond_4
    invoke-static {v1, v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$5(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v2

    :goto_4
    if-gtz v2, :cond_7

    :cond_6
    const/4 v7, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7, v5, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v7

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    const-string v7, "Muppet!"

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$5(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    sub-int v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v7

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v8

    cmpg-float v7, v7, v8

    if-lez v7, :cond_6

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_8
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private getCost(Lcom/scalado/app/rewind/RectTracker$AbstractFace;II)F
    .locals 12

    if-ne p2, p3, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v8

    if-nez v8, :cond_6

    move v4, v6

    :goto_1
    if-le v4, v1, :cond_1

    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    invoke-static {p1, p2, p3, v8}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$9(Lcom/scalado/app/rewind/RectTracker$AbstractFace;IILandroid/graphics/PointF;)Z

    move-result v8

    if-nez v8, :cond_4

    const/high16 v8, -0x4080

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v8

    aget-object v7, v8, v4

    if-nez v7, :cond_2

    const/high16 v8, -0x4080

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    invoke-static {v7, v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$5(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Z

    move-result v8

    if-nez v8, :cond_3

    const/high16 v8, -0x4080

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float/2addr v0, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float/2addr v0, v8

    :cond_5
    move v8, v0

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$10(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v3

    const/high16 v0, -0x4080

    array-length v8, v3

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_5

    aget-object v5, v3, v9

    const/4 v2, 0x0

    move v4, v6

    :goto_3
    if-le v4, v1, :cond_7

    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    invoke-static {v5, p2, p3, v10}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$9(Lcom/scalado/app/rewind/RectTracker$AbstractFace;IILandroid/graphics/PointF;)Z

    move-result v10

    if-nez v10, :cond_a

    const/high16 v8, -0x4080

    goto :goto_0

    :cond_7
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v10

    aget-object v7, v10, v4

    if-nez v7, :cond_8

    const/high16 v8, -0x4080

    goto :goto_0

    :cond_8
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    invoke-static {v7, v10}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$5(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Z

    move-result v10

    if-nez v10, :cond_9

    const/high16 v8, -0x4080

    goto/16 :goto_0

    :cond_9
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-float/2addr v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-float/2addr v2, v10

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method private numPossibilities()I
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/2addr v1, v3

    goto :goto_0
.end method

.method private optimize()V
    .locals 11

    const v10, 0x186a0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iput v4, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    new-instance v4, Ljava/util/Vector;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    iget v4, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    if-le v4, v10, :cond_7

    const-string v4, "%s failed, # possibilites > "

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->access$4(Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z

    :goto_1
    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    const/4 v5, -0x1

    invoke-static {v0, v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$0(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)V

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$1(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v8

    aget-object v3, v5, v6

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$0(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    iget v6, v3, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$3(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    :cond_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int v1, v5, v9

    :goto_2
    if-lez v1, :cond_3

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$1(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_3
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    :cond_4
    invoke-static {v0, v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$5(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v8

    aget-object v3, v5, v6

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    iget v6, v3, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$0(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$3(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeBg()V

    goto/16 :goto_1
.end method

.method private optimizeBg()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private optimizeFace(I)V
    .locals 4

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->eval()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$0(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)V

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$0(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)V

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
