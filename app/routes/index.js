module.exports = (app) => {
    require('./amenity.routes')(app);
    require('./category.routes')(app);
}
