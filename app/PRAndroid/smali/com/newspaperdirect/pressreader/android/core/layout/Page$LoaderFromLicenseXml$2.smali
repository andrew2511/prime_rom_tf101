.class Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$2;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/lang/String;Landroid/sax/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;

.field private final synthetic val$issue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$2;->val$issue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "attributes"

    .prologue
    .line 197
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;->access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;Ljava/util/List;)V

    .line 198
    :cond_0
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 199
    .local v1, page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$2;->val$issue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-static {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)V

    .line 200
    const-string v3, "PageNumber"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Page;I)V

    .line 201
    const-string v3, "PageName"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Ljava/lang/String;)V

    .line 202
    const-string v3, "Section"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Ljava/lang/String;)V

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0 0 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "W"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "H"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->create(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;)V

    .line 204
    const-string v3, "ZoomScales"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, zooms:[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [I

    invoke-static {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$6(Lcom/newspaperdirect/pressreader/android/core/layout/Page;[I)V

    .line 206
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 208
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;->access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-void

    .line 207
    :cond_1
    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$7(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)[I

    move-result-object v3

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
