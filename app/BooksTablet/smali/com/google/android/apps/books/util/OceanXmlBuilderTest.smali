.class public Lcom/google/android/apps/books/util/OceanXmlBuilderTest;
.super Landroid/test/AndroidTestCase;
.source "OceanXmlBuilderTest.java"


# static fields
.field private static final VOLUME_ENTRY:Ljava/lang/String; = "<?xml version=\'1.0\' encoding=\'UTF-8\' standalone=\'yes\' ?>\n<entry xmlns:gbs=\"http://schemas.google.com/books/2008\" xmlns=\"http://www.w3.org/2005/Atom\">\n<id>http://www.google.com/books/feeds/volumes/volume_id</id>\n</entry>"

.field private static final VOLUME_ID:Ljava/lang/String; = "volume_id"


# instance fields
.field private mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 39
    invoke-static {}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->newInstance()Lcom/google/android/apps/books/util/OceanXmlBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;

    .line 40
    return-void
.end method

.method public testVolumeEntry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v1, p0, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;

    const-string v2, "volume_id"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->startVolumeEntry(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;

    invoke-virtual {v1}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->endEntry()V

    .line 45
    iget-object v1, p0, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;

    invoke-virtual {v1}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, xml:Ljava/lang/String;
    const-string v1, "<?xml version=\'1.0\' encoding=\'UTF-8\' standalone=\'yes\' ?>\n<entry xmlns:gbs=\"http://schemas.google.com/books/2008\" xmlns=\"http://www.w3.org/2005/Atom\">\n<id>http://www.google.com/books/feeds/volumes/volume_id</id>\n</entry>"

    invoke-static {v1, v0}, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public testVolumeEntryPost()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Landroid/accounts/Account;

    const-string v3, "account_name"

    const-string v4, "com.google"

    invoke-direct {v0, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, account:Landroid/accounts/Account;
    iget-object v3, p0, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;

    const-string v4, "volume_id"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->startVolumeEntry(Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;

    invoke-virtual {v3}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->endEntry()V

    .line 54
    iget-object v3, p0, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;

    const-string v4, "uri"

    invoke-virtual {v3, v0, v4}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->buildPost(Landroid/accounts/Account;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 55
    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v3, "Bad xml"

    const-string v4, "<?xml version=\'1.0\' encoding=\'UTF-8\' standalone=\'yes\' ?>\n<entry xmlns:gbs=\"http://schemas.google.com/books/2008\" xmlns=\"http://www.w3.org/2005/Atom\">\n<id>http://www.google.com/books/feeds/volumes/volume_id</id>\n</entry>"

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksApplication$AccountParams;->getAccount(Lorg/apache/http/params/HttpParams;)Landroid/accounts/Account;

    move-result-object v2

    .line 58
    .local v2, postAccount:Landroid/accounts/Account;
    const-string v3, "Bad account parameter"

    invoke-static {v3, v0, v2}, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public testVolumeEntryWithReadingPosition()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;

    const-string v2, "volume_id"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->startVolumeEntry(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;

    const-string v2, "position"

    const-string v3, "time"

    const-string v4, "app_name"

    const-string v5, "action"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->addReadingPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;

    invoke-virtual {v1}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->endEntry()V

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;

    invoke-virtual {v1}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, xml:Ljava/lang/String;
    const-string v1, "<?xml version=\'1.0\' encoding=\'UTF-8\' standalone=\'yes\' ?>\n<entry xmlns:gbs=\"http://schemas.google.com/books/2008\" xmlns=\"http://www.w3.org/2005/Atom\">\n<id>http://www.google.com/books/feeds/volumes/volume_id</id>\n<gbs:readingPosition value=\"position\" time=\"time\" application=\"app_name\" action=\"action\" />\n</entry>"

    invoke-static {v1, v0}, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
