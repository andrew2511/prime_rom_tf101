.class public Lcom/asus/dmlib/vdm/DownloadDescriptor;
.super Ljava/lang/Object;
.source "DownloadDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;
    }
.end annotation


# instance fields
.field public field:[Ljava/lang/String;

.field public size:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->COUNT:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/asus/dmlib/vdm/DownloadDescriptor;->field:[Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getField(Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;)Ljava/lang/String;
    .locals 2
    .parameter "f"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/asus/dmlib/vdm/DownloadDescriptor;->field:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
