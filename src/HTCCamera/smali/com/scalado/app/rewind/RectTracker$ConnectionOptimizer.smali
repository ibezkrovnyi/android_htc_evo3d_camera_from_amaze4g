.class Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionOptimizer"
.end annotation


# instance fields
.field private mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

.field private mConnections:[I

.field private mCurConnections:[I

.field private mCurConnectionsBucketIndexes:[I

.field private mEndReached:Z

.field private mFromIds:[I

.field private mInUse:[Z

.field private mMinValue:F

.field private mPossibilities:I

.field private mToIds:[I

.field private mToIdsMap:[I

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;[I[I[",
            "Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;",
            ")V"
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v4, 0x7f7fffff

    iput v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mMinValue:F

    iput-boolean v7, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z

    iput-object p7, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    iput-object p5, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    iput-object p6, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mToIds:[I

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mToIds:[I

    array-length v4, v4

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mInUse:[Z

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mInUse:[Z

    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mToIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mToIdsMap:[I

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    array-length v4, v4

    if-lt v1, v4, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    array-length v4, v4

    if-lt v1, v4, :cond_2

    :goto_2
    const-string v4, "ImageConnector: # possibilities = %d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->access$5(Ljava/lang/String;)V

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mPossibilities:I

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    array-length v4, v4

    if-lt v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v4, v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$8(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v4

    mul-int/2addr v0, v4

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v7

    iget v3, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mId:I

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    aput v3, v4, v1

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$9(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v4, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$8(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    aput v7, v4, v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    aput v6, v4, v1

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    aput v6, v4, v1

    goto :goto_4
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->findBestConnection()V

    return-void
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z

    return v0
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mPossibilities:I

    return v0
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    return-object v0
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I

    return-object v0
.end method

.method private connect(IJ)V
    .locals 10

    const/4 v9, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    array-length v5, v5

    if-ge p1, v5, :cond_0

    sub-long v5, v1, p2

    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$9()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->eval()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v0, v5, p1

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v5

    if-le v5, v9, :cond_4

    const/4 v3, 0x0

    :goto_1
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v3

    iget v4, v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mId:I

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$9(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v5, v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$8(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    aput v4, v5, p1

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    aput v3, v5, p1

    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, p2, p3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->connect(IJ)V

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$8(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    const/4 v6, -0x1

    aput v6, v5, p1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, p2, p3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->connect(IJ)V

    goto :goto_0
.end method

.method private eval()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    array-length v3, v3

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mMinValue:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z

    iput v2, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mMinValue:F

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    aget v0, v3, v1

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v3

    aget-object v3, v3, v0

    iget v3, v3, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    aget v4, v4, v1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private findBestConnection()V
    .locals 8

    const/4 v7, 0x0

    iget v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mPossibilities:I

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const v3, 0x7f7fffff

    iput v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mMinValue:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v7, v1, v2}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->connect(IJ)V

    const-string v3, "*** Connections:"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->access$5(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    const-string v3, "[%d] %d -> %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->access$5(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPosForToId(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mToIds:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, -0x1

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mToIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
