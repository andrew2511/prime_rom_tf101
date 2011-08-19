.class Landroid/test/TestListActivity$1;
.super Ljava/lang/Object;
.source "TestListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/TestListActivity;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/TestListActivity;


# direct methods
.method constructor <init>(Landroid/test/TestListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Landroid/test/TestListActivity$1;->this$0:Landroid/test/TestListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/test/TestListActivity$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 72
    iget-object v2, p0, Landroid/test/TestListActivity$1;->this$0:Landroid/test/TestListActivity;

    #calls: Landroid/test/TestListActivity;->makeCompareName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/test/TestListActivity;->access$000(Landroid/test/TestListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, s1:Ljava/lang/String;
    iget-object v2, p0, Landroid/test/TestListActivity$1;->this$0:Landroid/test/TestListActivity;

    #calls: Landroid/test/TestListActivity;->makeCompareName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p2}, Landroid/test/TestListActivity;->access$000(Landroid/test/TestListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, s2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2
.end method
