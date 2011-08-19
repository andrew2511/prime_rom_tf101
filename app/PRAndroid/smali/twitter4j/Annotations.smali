.class public Ltwitter4j/Annotations;
.super Ljava/lang/Object;
.source "Annotations.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final lengthLimit:I = 0x200

.field private static final serialVersionUID:J = 0x6e08dab641ae27cdL


# instance fields
.field private annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    .line 53
    invoke-virtual {p0, v0}, Ltwitter4j/Annotations;->setAnnotations(Ljava/util/List;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, annotations:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    .line 61
    invoke-virtual {p0, p1}, Ltwitter4j/Annotations;->setAnnotations(Ljava/util/List;)V

    .line 62
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONArray;)V
    .locals 4
    .parameter "jsonArray"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v2, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    .line 70
    invoke-virtual {p0, v2}, Ltwitter4j/Annotations;->setAnnotations(Ljava/util/List;)V

    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 73
    new-instance v2, Ltwitter4j/Annotation;

    invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/Annotation;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-virtual {p0, v2}, Ltwitter4j/Annotations;->addAnnotation(Ltwitter4j/Annotation;)V
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 77
    .local v1, jsone:Ltwitter4j/internal/org/json/JSONException;
    iget-object v2, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 79
    .end local v1           #jsone:Ltwitter4j/internal/org/json/JSONException;
    :cond_0
    return-void
.end method

.method private getSortedAnnotations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ltwitter4j/Annotations;->size()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v0, sortedAnnotations:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Annotation;>;"
    iget-object v1, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 207
    return-object v0
.end method

.method public static isExceedingLengthLimit(Ltwitter4j/Annotations;)Z
    .locals 2
    .parameter "annotations"

    .prologue
    .line 135
    invoke-virtual {p0}, Ltwitter4j/Annotations;->asParameterValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAnnotation(Ltwitter4j/Annotation;)V
    .locals 1
    .parameter "annotation"

    .prologue
    .line 103
    iget-object v0, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public annotation(Ltwitter4j/Annotation;)Ltwitter4j/Annotations;
    .locals 0
    .parameter "annotation"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Ltwitter4j/Annotations;->addAnnotation(Ltwitter4j/Annotation;)V

    .line 113
    return-object p0
.end method

.method asParameterValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    new-instance v2, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v2}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    .line 151
    .local v2, jsonArray:Ltwitter4j/internal/org/json/JSONArray;
    iget-object v3, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Annotation;

    .line 152
    .local v0, annotation:Ltwitter4j/Annotation;
    invoke-virtual {v0}, Ltwitter4j/Annotation;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    goto :goto_0

    .line 154
    .end local v0           #annotation:Ltwitter4j/Annotation;
    :cond_0
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    if-nez p1, :cond_0

    move v0, v2

    .line 170
    .end local p1
    :goto_0
    return v0

    .line 165
    .restart local p1
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v3

    .line 166
    goto :goto_0

    .line 170
    :cond_1
    instance-of v0, p1, Ltwitter4j/Annotations;

    if-eqz v0, :cond_2

    check-cast p1, Ltwitter4j/Annotations;

    .end local p1
    invoke-direct {p1}, Ltwitter4j/Annotations;->getSortedAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Ltwitter4j/Annotations;->getSortedAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ltwitter4j/Annotations;->getSortedAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isExceedingLengthLimit()Z
    .locals 1

    .prologue
    .line 142
    invoke-static {p0}, Ltwitter4j/Annotations;->isExceedingLengthLimit(Ltwitter4j/Annotations;)Z

    move-result v0

    return v0
.end method

.method public setAnnotations(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, annotations:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Annotation;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    .line 96
    return-void

    :cond_0
    move-object v0, p1

    .line 94
    goto :goto_0
.end method

.method public size()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Annotations{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/Annotations;->size()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 189
    if-lez v0, :cond_0

    .line 190
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    :cond_0
    iget-object v2, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/Annotation;

    invoke-virtual {v2}, Ltwitter4j/Annotation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
