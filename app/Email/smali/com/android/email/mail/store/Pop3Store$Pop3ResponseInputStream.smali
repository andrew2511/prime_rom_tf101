.class Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;
.super Ljava/io/InputStream;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3ResponseInputStream"
.end annotation


# instance fields
.field private mFinished:Z

.field private final mIn:Ljava/io/InputStream;

.field private mStartOfLine:Z

.field final synthetic this$0:Lcom/android/email/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter "in"

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z

    .line 1018
    iput-object p2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    .line 1019
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1023
    iget-boolean v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mFinished:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 1038
    :goto_0
    return v1

    .line 1026
    :cond_0
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1027
    .local v0, d:I
    iget-boolean v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    .line 1028
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1029
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 1030
    iput-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mFinished:Z

    .line 1031
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move v1, v2

    .line 1032
    goto :goto_0

    .line 1036
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z

    move v1, v0

    .line 1038
    goto :goto_0

    .line 1036
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
