.class Lcom/android/browser/homepages/Template$SimpleEntity;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Lcom/android/browser/homepages/Template$Entity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/homepages/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleEntity"
.end annotation


# instance fields
.field mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/browser/homepages/Template$SimpleEntity;->mKey:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;Lcom/android/browser/homepages/Template$EntityData;)V
    .locals 1
    .parameter "stream"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/browser/homepages/Template$SimpleEntity;->mKey:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/android/browser/homepages/Template$EntityData;->writeValue(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 89
    return-void
.end method
