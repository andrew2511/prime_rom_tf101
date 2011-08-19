.class public Lcom/asus/mygazine/PhotoMonitor$Snapshot;
.super Ljava/lang/Object;
.source "PhotoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/PhotoMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field mDate:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mOriName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object v0, p0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->mOriName:Ljava/lang/String;

    .line 448
    iput-object v0, p0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->mName:Ljava/lang/String;

    .line 449
    iput-object v0, p0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->mDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->mOriName:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->mDate:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 456
    iput-object p1, p0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->mName:Ljava/lang/String;

    .line 457
    return-void
.end method

.method public setOriName(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->mOriName:Ljava/lang/String;

    .line 453
    return-void
.end method
