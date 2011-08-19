.class public Lcom/google/android/gm/provider/MailCore$Label;
.super Ljava/lang/Object;
.source "MailCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Label"
.end annotation


# instance fields
.field public canonicalName:Ljava/lang/String;

.field public id:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "canonicalName"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-wide p1, p0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    .line 159
    iput-object p3, p0, Lcom/google/android/gm/provider/MailCore$Label;->canonicalName:Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 169
    instance-of v2, p1, Lcom/google/android/gm/provider/MailCore$Label;

    if-nez v2, :cond_0

    move v2, v6

    .line 171
    :goto_0
    return v2

    .line 170
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gm/provider/MailCore$Label;

    move-object v1, v0

    .line 171
    .local v1, other:Lcom/google/android/gm/provider/MailCore$Label;
    iget-wide v2, p0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    iget-wide v4, v1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore$Label;->canonicalName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gm/provider/MailCore$Label;->canonicalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore$Label;->canonicalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
