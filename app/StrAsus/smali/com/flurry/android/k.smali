.class final Lcom/flurry/android/k;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/android/x;


# direct methods
.method constructor <init>(Lcom/flurry/android/x;IF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/flurry/android/k;->a:Lcom/flurry/android/x;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/flurry/android/k;->size()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/k;->a:Lcom/flurry/android/x;

    invoke-static {v1}, Lcom/flurry/android/x;->a(Lcom/flurry/android/x;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
