.class public final Lcom/a/a/a/at;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/a/a/a/az;

.field private static final b:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/a/a/a/al;

    invoke-direct {v0}, Lcom/a/a/a/al;-><init>()V

    sput-object v0, Lcom/a/a/a/at;->a:Lcom/a/a/a/az;

    .line 81
    new-instance v0, Lcom/a/a/a/am;

    invoke-direct {v0}, Lcom/a/a/a/am;-><init>()V

    sput-object v0, Lcom/a/a/a/at;->b:Ljava/util/Iterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/a/a/a/az;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/a/a/a/at;->a:Lcom/a/a/a/az;

    return-object v0
.end method
