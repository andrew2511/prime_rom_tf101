.class Lcom/google/android/gm/provider/MailSync$MailPullParser;
.super Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;
.source "MailSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MailPullParser"
.end annotation


# instance fields
.field private mResponseVersion:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "stream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2873
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2868
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/provider/MailSync$MailPullParser;->mResponseVersion:I

    .line 2874
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2878
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;-><init>(Ljava/lang/String;)V

    .line 2868
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/provider/MailSync$MailPullParser;->mResponseVersion:I

    .line 2879
    return-void
.end method


# virtual methods
.method public getResponseVersion()I
    .locals 1

    .prologue
    .line 2888
    iget v0, p0, Lcom/google/android/gm/provider/MailSync$MailPullParser;->mResponseVersion:I

    return v0
.end method

.method public setResponseVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 2883
    iput p1, p0, Lcom/google/android/gm/provider/MailSync$MailPullParser;->mResponseVersion:I

    .line 2884
    return-void
.end method
