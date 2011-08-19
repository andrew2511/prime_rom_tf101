.class final Lcom/zinio/mobile/android/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/b/s;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/a/b/s;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/a;->a:Lcom/zinio/mobile/android/a/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 102
    check-cast p1, Lcom/zinio/mobile/android/a/a/j;

    check-cast p2, Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->C()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->C()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
