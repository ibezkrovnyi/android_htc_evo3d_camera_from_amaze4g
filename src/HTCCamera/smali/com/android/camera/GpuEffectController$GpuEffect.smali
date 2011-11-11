.class public final enum Lcom/android/camera/GpuEffectController$GpuEffect;
.super Ljava/lang/Enum;
.source "GpuEffectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/GpuEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GpuEffect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/GpuEffectController$GpuEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/GpuEffectController$GpuEffect;

.field public static final enum CONTRAST:Lcom/android/camera/GpuEffectController$GpuEffect;

.field public static final enum DEPTH:Lcom/android/camera/GpuEffectController$GpuEffect;

.field public static final enum DISTORTION:Lcom/android/camera/GpuEffectController$GpuEffect;

.field public static final enum DOTS:Lcom/android/camera/GpuEffectController$GpuEffect;

.field public static final enum NONE:Lcom/android/camera/GpuEffectController$GpuEffect;

.field public static final enum SEPIA:Lcom/android/camera/GpuEffectController$GpuEffect;

.field public static final enum TILFSHIFT:Lcom/android/camera/GpuEffectController$GpuEffect;

.field public static final enum VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

.field public static final enum VINTAGE_GREEN:Lcom/android/camera/GpuEffectController$GpuEffect;

.field public static final enum VINTAGE_HIGH:Lcom/android/camera/GpuEffectController$GpuEffect;

.field public static final enum VINTAGE_RED:Lcom/android/camera/GpuEffectController$GpuEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/camera/GpuEffectController$GpuEffect;

    const-string v1, "VINTAGE_GREEN"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/GpuEffectController$GpuEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->VINTAGE_GREEN:Lcom/android/camera/GpuEffectController$GpuEffect;

    new-instance v0, Lcom/android/camera/GpuEffectController$GpuEffect;

    const-string v1, "VINTAGE_HIGH"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/GpuEffectController$GpuEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->VINTAGE_HIGH:Lcom/android/camera/GpuEffectController$GpuEffect;

    new-instance v0, Lcom/android/camera/GpuEffectController$GpuEffect;

    const-string v1, "VINTAGE_RED"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/GpuEffectController$GpuEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->VINTAGE_RED:Lcom/android/camera/GpuEffectController$GpuEffect;

    new-instance v0, Lcom/android/camera/GpuEffectController$GpuEffect;

    const-string v1, "DEPTH"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/GpuEffectController$GpuEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->DEPTH:Lcom/android/camera/GpuEffectController$GpuEffect;

    new-instance v0, Lcom/android/camera/GpuEffectController$GpuEffect;

    const-string v1, "DISTORTION"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/GpuEffectController$GpuEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->DISTORTION:Lcom/android/camera/GpuEffectController$GpuEffect;

    new-instance v0, Lcom/android/camera/GpuEffectController$GpuEffect;

    const-string v1, "VIGNETTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/GpuEffectController$GpuEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    new-instance v0, Lcom/android/camera/GpuEffectController$GpuEffect;

    const-string v1, "SEPIA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/GpuEffectController$GpuEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->SEPIA:Lcom/android/camera/GpuEffectController$GpuEffect;

    new-instance v0, Lcom/android/camera/GpuEffectController$GpuEffect;

    const-string v1, "DOTS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/GpuEffectController$GpuEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->DOTS:Lcom/android/camera/GpuEffectController$GpuEffect;

    new-instance v0, Lcom/android/camera/GpuEffectController$GpuEffect;

    const-string v1, "CONTRAST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/camera/GpuEffectController$GpuEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->CONTRAST:Lcom/android/camera/GpuEffectController$GpuEffect;

    new-instance v0, Lcom/android/camera/GpuEffectController$GpuEffect;

    const-string v1, "TILFSHIFT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/camera/GpuEffectController$GpuEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->TILFSHIFT:Lcom/android/camera/GpuEffectController$GpuEffect;

    new-instance v0, Lcom/android/camera/GpuEffectController$GpuEffect;

    const-string v1, "NONE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/camera/GpuEffectController$GpuEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->NONE:Lcom/android/camera/GpuEffectController$GpuEffect;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->VINTAGE_GREEN:Lcom/android/camera/GpuEffectController$GpuEffect;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->VINTAGE_HIGH:Lcom/android/camera/GpuEffectController$GpuEffect;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->VINTAGE_RED:Lcom/android/camera/GpuEffectController$GpuEffect;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->DEPTH:Lcom/android/camera/GpuEffectController$GpuEffect;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->DISTORTION:Lcom/android/camera/GpuEffectController$GpuEffect;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/GpuEffectController$GpuEffect;->SEPIA:Lcom/android/camera/GpuEffectController$GpuEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/GpuEffectController$GpuEffect;->DOTS:Lcom/android/camera/GpuEffectController$GpuEffect;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/GpuEffectController$GpuEffect;->CONTRAST:Lcom/android/camera/GpuEffectController$GpuEffect;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/camera/GpuEffectController$GpuEffect;->TILFSHIFT:Lcom/android/camera/GpuEffectController$GpuEffect;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/camera/GpuEffectController$GpuEffect;->NONE:Lcom/android/camera/GpuEffectController$GpuEffect;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->$VALUES:[Lcom/android/camera/GpuEffectController$GpuEffect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/GpuEffectController$GpuEffect;
    .locals 1

    const-class v0, Lcom/android/camera/GpuEffectController$GpuEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/GpuEffectController$GpuEffect;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/GpuEffectController$GpuEffect;
    .locals 1

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->$VALUES:[Lcom/android/camera/GpuEffectController$GpuEffect;

    invoke-virtual {v0}, [Lcom/android/camera/GpuEffectController$GpuEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/GpuEffectController$GpuEffect;

    return-object v0
.end method
