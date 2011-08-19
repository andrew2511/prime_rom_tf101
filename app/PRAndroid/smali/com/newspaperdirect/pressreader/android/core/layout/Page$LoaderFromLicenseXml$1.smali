.class Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$1;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Landroid/sax/EndElementListener;


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


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;->access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;->access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/trx/PageDbAdapter;->insert(Ljava/util/List;)V

    goto :goto_0
.end method
