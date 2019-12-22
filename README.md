# Statistics and R
## HarvardX Course Summary

### Getting started with R
Just a section about downloading and running RStudio.

### First assessment: Exercises

#### Exercise #2
Creating a vector [1,2,3,4,5] :
<pre><code>
version1 <- c(1,2,3,4,5)
version2 <- 1:5
version3 <- seq(1,5,by=1)
version4 <- seq(1,5,lenght.out=5)
</code></pre>
* __version1__: Uses the basic vector creator
* __version2__: Uses the range vector creator (only for sequential integers)
* __version3__: Uses the _seq_ function, defining the initial and final elements and the increments between them (by).
* __version4__: Uses the _seq_ function, defining the initial and final elements and the number of elements in the resulting vector.

Getting the mean of a vector:
<pre><code>
mean(vector)
</code></pre>


#### Exercise #3
Looping in elements of a vector printing them:
<pre><code>
for (element in vector) {
  print(element)
}
</code></pre>
The for loop simply iterates through a list/vector/dataframe or any other structure with elements.

#### Exercise #4
Using datasets from its package and analysing classes:
<pre><code>
cars
class(cars)
</code></pre>
When you are using the datasets package, some datasets are available for use like they were variables (see https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html). One of those is _cars_. By using the function _class_ in any object it will return the class of that object.

#### Exercise #5
Function length and nrow:
<pre><code>
length(cars)
nrow(cars)
</code></pre>
The _length_ function returns the number of columns (or the size of the last dimension of the dataframe), while the _nrow_ function returns the number of rows.

#### Exercise #6
Function colnames:
<pre><code>
colnames(cars)
</code></pre>
This function returns a list of names of the columns of the dataframe.

#### Exercise #7
Accessing with _[]_ and using function _mean_:
<pre><code>
cars[1,2]
cars[,2]
mean(cars[,2])
</code></pre>
It's possible to access elements of objects using _[]_, when it's used with integers in all spaces, it simply chooses one element by its index in each dimension. When some indexes are missing, this chooses all elements in that dimension. The function mean simply takes an 1 dimension object and takes the mean of its elements.

#### Exercise #8
Function _which_ and operator _$_:
<pre><code>
which(cars$dist == 85)
</code></pre>
The operator _$_ chooses a column of the data frame by its name. The function _which_ recieves a logic expression as an enter, returning the indexes where this expression is true.
