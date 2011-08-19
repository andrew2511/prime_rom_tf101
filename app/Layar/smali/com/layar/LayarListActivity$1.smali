.class Lcom/layar/LayarListActivity$1;
.super Ljava/lang/Object;
.source "LayarListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/LayarListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/layar/data/POI;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/LayarListActivity;


# direct methods
.method constructor <init>(Lcom/layar/LayarListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/LayarListActivity$1;->this$0:Lcom/layar/LayarListActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/layar/data/POI;Lcom/layar/data/POI;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_1
    iget v0, p1, Lcom/layar/data/POI;->geodistance:I

    iget v1, p2, Lcom/layar/data/POI;->geodistance:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/POI;

    check-cast p2, Lcom/layar/data/POI;

    invoke-virtual {p0, p1, p2}, Lcom/layar/LayarListActivity$1;->compare(Lcom/layar/data/POI;Lcom/layar/data/POI;)I

    move-result v0

    return v0
.end method
