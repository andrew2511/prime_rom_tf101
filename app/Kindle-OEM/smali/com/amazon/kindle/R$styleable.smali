.class public final Lcom/amazon/kindle/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ArticleListAttributes:[I

.field public static final ArticleListAttributes_maxColumns:I

.field public static final FontAttributes:[I

.field public static final FontAttributes_textScaleFactor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1596
    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/R$styleable;->ArticleListAttributes:[I

    .line 1623
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/R$styleable;->FontAttributes:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
