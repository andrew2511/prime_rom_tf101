.class Lcom/zinio/mobile/android/a/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/v;


# instance fields
.field private final a:Lcom/zinio/mobile/android/a/a/j;

.field private synthetic b:Lcom/zinio/mobile/android/a/b/s;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/a/b/s;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/w;->b:Lcom/zinio/mobile/android/a/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p2, p0, Lcom/zinio/mobile/android/a/b/w;->a:Lcom/zinio/mobile/android/a/a/j;

    .line 640
    invoke-virtual {p2, p0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    .line 641
    return-void
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/a/a/x;)V
    .locals 1
    .parameter

    .prologue
    .line 649
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/w;->b:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/x;)V

    .line 650
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/w;->b:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->h()V

    .line 647
    return-void
.end method
