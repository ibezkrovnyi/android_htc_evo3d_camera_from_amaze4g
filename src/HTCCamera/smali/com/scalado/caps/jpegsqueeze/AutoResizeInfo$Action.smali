.class public Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;
.super Ljava/lang/Object;
.source "AutoResizeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final MIDDLE_COURSE:Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;

.field public static final PRESERVE_SOURCE_ENCODING_QUALITY:Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;

.field public static final PRIORITIZE_HIGH_ENCODING_QUALITY:Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;

.field public static final PRIORITIZE_LARGE_IMAGE_SIZE:Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;->PRESERVE_SOURCE_ENCODING_QUALITY:Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;

    new-instance v0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;->PRIORITIZE_LARGE_IMAGE_SIZE:Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;

    new-instance v0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;->PRIORITIZE_HIGH_ENCODING_QUALITY:Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;

    new-instance v0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;->MIDDLE_COURSE:Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;->value:I

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;)I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;->value:I

    return v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;->value:I

    return v0
.end method
