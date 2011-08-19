.class Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;
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

.field private final synthetic val$allCountries:Ljava/util/HashMap;

.field private final synthetic val$newspaper:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;Ljava/util/HashMap;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;->val$allCountries:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;->val$newspaper:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "attributes"

    .prologue
    .line 136
    const-string v2, "ISOCode"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, isoCode:Ljava/lang/String;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;->val$allCountries:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;->val$allCountries:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    .line 142
    .local v0, country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    :goto_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;->val$newspaper:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->Countries:Ljava/util/List;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;->val$newspaper:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->Countries:Ljava/util/List;

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;->val$newspaper:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object p0, v2, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->Countries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void

    .line 139
    .end local v0           #country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->access$4(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->create(JLorg/xml/sax/Attributes;)Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    move-result-object v0

    .line 140
    .restart local v0       #country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;->val$allCountries:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
