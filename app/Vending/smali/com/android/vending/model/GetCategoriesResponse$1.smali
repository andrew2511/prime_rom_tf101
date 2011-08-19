.class Lcom/android/vending/model/GetCategoriesResponse$1;
.super Ljava/lang/Object;
.source "GetCategoriesResponse.java"

# interfaces
.implements Lcom/android/vending/model/GetCategoriesResponse$Category$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/model/GetCategoriesResponse;->constructCategoryTree()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/model/GetCategoriesResponse;

.field final synthetic val$homeCategoriesByTopLevel:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Lcom/android/vending/model/GetCategoriesResponse;Ljava/util/LinkedList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/vending/model/GetCategoriesResponse$1;->this$0:Lcom/android/vending/model/GetCategoriesResponse;

    iput-object p2, p0, Lcom/android/vending/model/GetCategoriesResponse$1;->val$homeCategoriesByTopLevel:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/android/vending/model/GetCategoriesResponse$Category;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 122
    invoke-static {p1}, Lcom/android/vending/model/GetCategoriesResponse$Category;->access$000(Lcom/android/vending/model/GetCategoriesResponse$Category;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse$1;->val$homeCategoriesByTopLevel:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    return-void
.end method
