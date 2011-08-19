.class public final Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasa/EntrySchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColumnInfo"
.end annotation


# instance fields
.field public final doNotMerge:Z

.field public final extraSql:Ljava/lang/String;

.field public final field:Ljava/lang/reflect/Field;

.field public final fullText:Z

.field public final indexed:Z

.field public final name:Ljava/lang/String;

.field public final projectionIndex:I

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZLjava/lang/String;ZLjava/lang/reflect/Field;I)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "indexed"
    .parameter "fullText"
    .parameter "extraSql"
    .parameter "doNotMerge"
    .parameter "field"
    .parameter "projectionIndex"

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 423
    iput p2, p0, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->type:I

    .line 424
    iput-boolean p3, p0, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->indexed:Z

    .line 425
    iput-boolean p4, p0, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->fullText:Z

    .line 426
    iput-object p5, p0, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->extraSql:Ljava/lang/String;

    .line 427
    iput-boolean p6, p0, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->doNotMerge:Z

    .line 428
    iput-object p7, p0, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 429
    iput p8, p0, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 430
    return-void
.end method


# virtual methods
.method public isId()Z
    .locals 2

    .prologue
    .line 433
    const-string v0, "_id"

    iget-object v1, p0, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
