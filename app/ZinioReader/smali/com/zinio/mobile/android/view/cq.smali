.class public final Lcom/zinio/mobile/android/view/cq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/zinio/mobile/android/view/cq;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/zinio/mobile/android/view/cq;

    invoke-direct {v0}, Lcom/zinio/mobile/android/view/cq;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/view/cq;->b:Lcom/zinio/mobile/android/view/cq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static a()Lcom/zinio/mobile/android/view/cq;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/zinio/mobile/android/view/cq;->b:Lcom/zinio/mobile/android/view/cq;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cq;->a:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cq;->a:Landroid/content/Context;

    return-object v0
.end method
