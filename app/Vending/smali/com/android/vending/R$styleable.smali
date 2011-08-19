.class public final Lcom/android/vending/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ArcLayout_Layout:[I

.field public static final OverlappingLayout_Layout:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2327
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/vending/R$styleable;->ArcLayout_Layout:[I

    .line 2363
    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/android/vending/R$styleable;->OverlappingLayout_Layout:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
