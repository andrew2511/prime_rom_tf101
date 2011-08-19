.class public final Lcom/zinio/mobile/android/resources/download/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    .line 38
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/zinio/mobile/android/resources/download/d;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 190
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/resources/download/d;

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/zinio/mobile/android/resources/download/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 197
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/zinio/mobile/android/resources/download/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 98
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/resources/download/d;

    .line 89
    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/d;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-object v0, v1

    .line 96
    :goto_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/d;->a()Lcom/zinio/mobile/android/resources/download/j;

    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removing token for issue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/zinio/mobile/android/resources/download/d;->a(Lcom/zinio/mobile/android/resources/download/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/zinio/mobile/android/resources/download/g;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/zinio/mobile/android/resources/download/d;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All tokens cleared for issue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    return-void
.end method

.method public final a(Lcom/zinio/mobile/android/resources/download/j;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    .line 55
    const-class v1, Lcom/zinio/mobile/android/resources/download/k;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/zinio/mobile/android/resources/download/k;

    move-object v1, v0

    .line 57
    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/k;->f()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/k;->e()Ljava/lang/String;

    move-result-object v1

    .line 61
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/zinio/mobile/android/resources/download/g;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/zinio/mobile/android/resources/download/d;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-object v1, v3

    :goto_1
    iget-object v2, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v1, p1}, Lcom/zinio/mobile/android/resources/download/d;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/d;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/resources/download/j;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    invoke-virtual {v1, p1}, Lcom/zinio/mobile/android/resources/download/d;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/zinio/mobile/android/resources/download/j;->a(I)V

    .line 65
    invoke-virtual {v1, p1}, Lcom/zinio/mobile/android/resources/download/d;->a(Lcom/zinio/mobile/android/resources/download/j;)Z

    move-result v1

    .line 70
    :goto_2
    return v1

    .line 61
    :cond_0
    new-instance v3, Lcom/zinio/mobile/android/resources/download/d;

    invoke-direct {v3, p0, v2, v1}, Lcom/zinio/mobile/android/resources/download/d;-><init>(Lcom/zinio/mobile/android/resources/download/g;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_1

    .line 67
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v1, p1}, Lcom/zinio/mobile/android/resources/download/d;->a(Lcom/zinio/mobile/android/resources/download/j;)Z

    move-result v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 122
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/resources/download/d;

    .line 148
    invoke-virtual {p0}, Lcom/zinio/mobile/android/resources/download/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/zinio/mobile/android/resources/download/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 148
    goto :goto_0

    :cond_1
    move v0, v1

    .line 151
    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method
