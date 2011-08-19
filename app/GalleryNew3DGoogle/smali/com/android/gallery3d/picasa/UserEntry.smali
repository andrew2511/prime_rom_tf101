.class public final Lcom/android/gallery3d/picasa/UserEntry;
.super Lcom/android/gallery3d/picasa/Entry;
.source "UserEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/picasa/Entry$Table;
    value = "users"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;


# instance fields
.field public account:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "account"
    .end annotation
.end field

.field public albumsEtag:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "albums_etag"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/android/gallery3d/picasa/EntrySchema;

    const-class v1, Lcom/android/gallery3d/picasa/UserEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/picasa/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/gallery3d/picasa/UserEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/Entry;-><init>()V

    return-void
.end method


# virtual methods
.method public setPropertyFromXml(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "attrs"
    .parameter "content"

    .prologue
    .line 33
    return-void
.end method
