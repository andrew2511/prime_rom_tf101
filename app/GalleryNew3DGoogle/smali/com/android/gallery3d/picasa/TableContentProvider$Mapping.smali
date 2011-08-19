.class final Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;
.super Ljava/lang/Object;
.source "TableContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasa/TableContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mapping"
.end annotation


# instance fields
.field public hasId:Z

.field public mimeSubtype:Ljava/lang/String;

.field public table:Lcom/android/gallery3d/picasa/EntrySchema;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/picasa/EntrySchema;Ljava/lang/String;Z)V
    .locals 0
    .parameter "table"
    .parameter "mimeSubtype"
    .parameter "hasId"

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->table:Lcom/android/gallery3d/picasa/EntrySchema;

    .line 239
    iput-object p2, p0, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->mimeSubtype:Ljava/lang/String;

    .line 240
    iput-boolean p3, p0, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->hasId:Z

    .line 241
    return-void
.end method
