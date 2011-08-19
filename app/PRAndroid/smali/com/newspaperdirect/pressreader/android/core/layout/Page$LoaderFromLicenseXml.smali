.class public Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderFromLicenseXml"
.end annotation


# instance fields
.field private mPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/lang/String;Landroid/sax/Element;)V
    .locals 2
    .parameter "issue"
    .parameter "uri"
    .parameter "pages"

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;)V

    invoke-virtual {p3, v0}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 195
    const-string v0, "Page"

    invoke-virtual {p3, p2, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$2;

    invoke-direct {v1, p0, p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 211
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;->mPages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;->mPages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;->mPages:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;->mPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
