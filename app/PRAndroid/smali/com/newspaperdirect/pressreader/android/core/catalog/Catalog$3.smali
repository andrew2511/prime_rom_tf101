.class Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$3;
.super Ljava/lang/Object;
.source "Catalog.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->load()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

.field private final synthetic val$newspaper:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

.field private final synthetic val$newspapers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$3;->val$newspaper:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$3;->val$newspapers:Ljava/util/List;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$3;->val$newspaper:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->access$4(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->create(JLorg/xml/sax/Attributes;)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$3;->val$newspapers:Ljava/util/List;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$3;->val$newspaper:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object p0, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method
