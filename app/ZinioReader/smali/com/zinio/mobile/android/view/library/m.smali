.class final Lcom/zinio/mobile/android/view/library/m;
.super Lcom/zinio/mobile/android/view/library/c;
.source "SourceFile"


# instance fields
.field private synthetic b:Lcom/zinio/mobile/android/view/library/LibraryAdapter;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/library/LibraryAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/m;->b:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/library/c;-><init>(Lcom/zinio/mobile/android/view/library/LibraryAdapter;)V

    .line 777
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 782
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/library/e;

    .line 783
    if-nez v0, :cond_0

    .line 784
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 806
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/e;->a()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 790
    if-nez v0, :cond_1

    .line 791
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_0

    .line 795
    :cond_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 796
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Issue is Downloaded."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/library/c;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 800
    :cond_2
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    .line 804
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/m;->b:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/library/c;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
