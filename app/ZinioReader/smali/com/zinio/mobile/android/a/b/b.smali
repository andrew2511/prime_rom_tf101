.class final Lcom/zinio/mobile/android/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Ljava/util/Comparator;

.field private synthetic b:Lcom/zinio/mobile/android/a/b/s;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/a/b/s;Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/b;->b:Lcom/zinio/mobile/android/a/b/s;

    iput-object p2, p0, Lcom/zinio/mobile/android/a/b/b;->a:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 123
    check-cast p1, Lcom/zinio/mobile/android/a/a/j;

    check-cast p2, Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/b;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :cond_0
    return v0
.end method
