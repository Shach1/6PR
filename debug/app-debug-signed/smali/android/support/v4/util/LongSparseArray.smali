.class public Landroid/support/v4/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 65
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 66
    if-nez p1, :cond_0

    .line 67
    sget-object v1, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 68
    sget-object v1, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    move-result p1

    .line 71
    new-array v1, p1, [J

    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 72
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 74
    :goto_0
    iput v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 75
    return-void
.end method

.method private gc()V
    .locals 8

    .line 148
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 149
    .local v0, "n":I
    const/4 v1, 0x0

    .line 150
    .local v1, "o":I
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 151
    .local v2, "keys":[J
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 153
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 154
    aget-object v5, v3, v4

    .line 156
    .local v5, "val":Ljava/lang/Object;
    sget-object v6, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    .line 157
    if-eq v4, v1, :cond_0

    .line 158
    aget-wide v6, v2, v4

    aput-wide v6, v2, v1

    .line 159
    aput-object v5, v3, v1

    .line 160
    const/4 v6, 0x0

    aput-object v6, v3, v4

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 153
    .end local v5    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 168
    iput v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 171
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 338
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 340
    return-void

    .line 343
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 344
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 347
    :cond_1
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 348
    .local v0, "pos":I
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 349
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    .line 351
    .local v1, "n":I
    new-array v2, v1, [J

    .line 352
    .local v2, "nkeys":[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 355
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v4

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 359
    iput-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 362
    .end local v1    # "n":I
    .end local v2    # "nkeys":[J
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 363
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 364
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 365
    return-void
.end method

.method public clear()V
    .locals 4

    .line 322
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 323
    .local v0, "n":I
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 325
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 326
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 330
    iput-boolean v2, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 331
    return-void
.end method

.method public clone()Landroid/support/v4/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LongSparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 80
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    .line 82
    .local v0, "clone":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/LongSparseArray;

    move-object v0, v1

    .line 83
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 84
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 88
    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->clone()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .locals 4
    .param p1, "key"    # J

    .line 118
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 120
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 121
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 122
    aput-object v3, v1, v0

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 126
    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 96
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 105
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 107
    .local v0, "i":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    aget-object v1, v1, v0

    return-object v1

    .line 108
    :cond_1
    :goto_0
    return-object p3
.end method

.method public indexOfKey(J)I
    .locals 2
    .param p1, "key"    # J

    .line 291
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 295
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 307
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 311
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 312
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 313
    return v0

    .line 311
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 242
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyAt(I)J
    .locals 3
    .param p1, "index"    # I

    .line 251
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public put(JLjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 181
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 182
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_0

    .line 184
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 186
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 187
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 188
    aput-object p3, v2, v0

    .line 189
    return-void

    .line 192
    :cond_1
    iget-boolean v2, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 193
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 196
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v1

    xor-int/lit8 v0, v1, -0x1

    .line 199
    :cond_2
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 200
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    .line 202
    .local v1, "n":I
    new-array v2, v1, [J

    .line 203
    .local v2, "nkeys":[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 206
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v4

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 210
    iput-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 213
    .end local v1    # "n":I
    .end local v2    # "nkeys":[J
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_4

    .line 215
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    :cond_4
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 220
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 221
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 223
    :goto_0
    return-void
.end method

.method public remove(J)V
    .locals 0
    .param p1, "key"    # J

    .line 132
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 133
    return-void
.end method

.method public removeAt(I)V
    .locals 3
    .param p1, "index"    # I

    .line 139
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 140
    aput-object v2, v0, p1

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 143
    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 278
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 282
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 283
    return-void
.end method

.method public size()I
    .locals 1

    .line 230
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 234
    :cond_0
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 376
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 377
    const-string v0, "{}"

    return-object v0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 381
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v1, v2, :cond_3

    .line 383
    if-lez v1, :cond_1

    .line 384
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 387
    .local v2, "key":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 388
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 390
    .local v4, "value":Ljava/lang/Object;
    if-eq v4, p0, :cond_2

    .line 391
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 393
    :cond_2
    const-string v5, "(this Map)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .end local v2    # "key":J
    .end local v4    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "i":I
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 265
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 269
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
