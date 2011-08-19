.class public abstract Lcom/android/gallery3d/picasa/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasa/Entry$Column;,
        Lcom/android/gallery3d/picasa/Entry$Table;
    }
.end annotation


# static fields
.field static final ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field public id:J
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/picasa/Entry;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/picasa/Entry;->id:J

    .line 43
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/picasa/Entry;->id:J

    .line 61
    return-void
.end method

.method public abstract setPropertyFromXml(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
.end method
